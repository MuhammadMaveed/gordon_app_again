import 'package:flutter/material.dart';
import 'package:gordon_app_again/customs_widgets/custom_textformfield.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search", style: TextStyle(color: Colors.black)),
        leading: Icon(Icons.arrow_back_ios),
      ),
      body: Column(
        children: [
          Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            child: Column(
              children: [
                CustomTextformField(
                  middleSzeBox: 0,
                  hintText: "Search",
                  suffIcon: Icons.search,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
