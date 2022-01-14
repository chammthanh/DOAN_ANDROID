class TaiKhoanDN {
  final String email, password;
  TaiKhoanDN({
    required this.email,
    required this.password,
  });
  TaiKhoanDN.fromJson(Map<String, dynamic> json)
      : email = json['email'],
        password = json['password'];
}
