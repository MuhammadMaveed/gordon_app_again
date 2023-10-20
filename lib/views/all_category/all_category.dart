import 'package:flutter/material.dart';
import 'package:gordon_app_again/consts/lists.dart';
import 'package:gordon_app_again/customs_widgets/text.dart';

class AllCategory extends StatefulWidget {
  const AllCategory({super.key});

  @override
  State<AllCategory> createState() => _AllCategoryState();
}

class _AllCategoryState extends State<AllCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Category", style: TextStyle(color: Colors.black)),
        actions: [
          Icon(
            Icons.search,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Column(
        children: [
          Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Column(
              children: [
                GridView.builder(
                  itemCount:categoryListText.length,
                  shrinkWrap: true,
                  physics:NeverScrollableScrollPhysics() ,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    mainAxisExtent: 76,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10
                  ),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Image.asset(categoryList[index],
                            height: 50, width: 50, fit: BoxFit.cover),
                        SizedBox(height: 5,),
                        FittedBox(
                          child: OurText(
                            text: categoryListText[index],
                            fontSize: 14,
                            fontBold: FontWeight.bold,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
