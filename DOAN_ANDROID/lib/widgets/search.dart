import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Search extends SearchDelegate {
  @override
  //xóa
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = "";
        },
        icon: const Icon(Icons.close),
      ),
    ];
  }

  //back
  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: SvgPicture.asset("assets/icons/chevron-left.svg"),
    );
  }

  late String selectedResult;
  @override
  Widget buildResults(BuildContext context) {
    return Container(
      child: Text(selectedResult),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Text("test");
      },
    );
  }
}
