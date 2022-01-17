<?php

namespace App\Http\Controllers;

use App\Http\Middleware\Authenticate;
use App\Models\User;
use Illuminate\Http\Request;

class AuthController extends Controller
{
    public function register(Request $request)
    {
        $email = $request->email;
        $this->validate(
            $request,
            [
                'username' => ['required', 'max:255'],
                'email' => ['required', 'email'],
                'password' => ['required', 'min:6'],
                'ten'   => ['required', 'max:255'],
            ]
        );

        // Check if user already exist
        if (User::where('email', '=', $email)->exists()) {
            return response()->json(['status' => 'lỗi', 'message' => 'email đã tồn tại']);
        }

        // Create new user
        try {
            $user = new User();
            $user->username = $request->username;
            $user->email = $request->email;
            $user->password = app('hash')->make($request->password);
            $user->ten = $request->ten;
            $user->hinhanh = 'a.png';
            $user->trangthai = 2;

            if ($user->save()) {
                return $this->login($request);
            }
        } catch (\Exception $e) {
            return response()->json(['status' => 'lỗi', 'message' => $e->getMessage()]);
        }
    }

    /**
     * Log the user out (Invalidate the token).
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function logout()
    {
        auth()->logout();

        return response()->json(['message' => 'đăng xuất thành công']);
    }

    public function login(Request $request)
    {
        $this->validate(
            $request,
            [
                'email' => ['required', 'email'],
                'password' => ['required', 'min:6'],
            ],
            [
                'email.required' => 'phải nhập email',
                'email.email' => 'email sai định dạng',
                'password.required' => 'password không được để trống',
                'password.min' => 'password ít nhất phải 6 ký tự'
            ]
        );

        $credentials = request(['email', 'password']);

        if (!$token = auth()->attempt($credentials)) {
            return response()->json(['lỗi' => 'email hoac mat khau sai'], 401);
        }

        return $this->respondWithToken($token);
    }

    /**
     * Get the token array structure.
     *
     * @param string $token
     *
     * @return \Illuminate\Http\JsonResponse
     */
    protected function respondWithToken($token)
    {
        return response()->json([
            'access_token' => $token,
            'token_type' => 'jwt',
            'session kết thúc sau' => auth()->factory()->getTTL() * 60
        ]);
    }
}
