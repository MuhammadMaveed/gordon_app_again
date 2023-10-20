import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gordon_app_again/consts/colors.dart';
import 'package:gordon_app_again/consts/images.dart';
import 'package:gordon_app_again/consts/lists.dart';
import 'package:gordon_app_again/customs_widgets/custom_buttom.dart';
import 'package:gordon_app_again/customs_widgets/custom_textformfield.dart';
import 'package:gordon_app_again/customs_widgets/text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String name = "";
  String email = "";
  List<dynamic> pageviewImages = [
    AssetImage(Banner_img),
    AssetImage(Banner_img),
    AssetImage(Banner_img),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.white ,
        actions: [
          Container(
            height: 28,
            width: 28,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(Truck_img), fit: BoxFit.cover)),
          ),
          SizedBox(
            width: 10,
          ),
        ],
        title: Text("LOGO"),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextformField(
                    middleSzeBox:0,
                    hintTextColor: Colors.grey[600],
                    hintText: "Search Product Name",
                    suffIcon: Icons.search,
                  ),
                  SizedBox(height: 15),

                  /// Page View Container
                  SizedBox(
                    height: 160,
                    width: double.infinity,
                    child: PageView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: pageviewImages.length,
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: pageviewImages[index],
                                  fit: BoxFit.fill)),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 10),

                  /// Category Row
                  Row(
                    children: [
                      OurText(
                          text: "Categories",
                          fontSize: 14,
                          fontBold: FontWeight.bold,
                          textColor: Colors.black),
                      Spacer(),
                      OurText(
                          text: "See All",
                          fontSize: 14,
                          fontBold: FontWeight.bold,
                          textColor: darkBlue),
                    ],
                  ),
                  SizedBox(height: 10),

                  /// CATEGORY ListView Builder
                  SizedBox(
                    height: 80,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: categoryListText.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Column(
                            children: [
                              Image.asset(categoryList[index],
                                  height: 50, width: 50, fit: BoxFit.cover),
                              SizedBox(
                                height: 8,
                              ),
                              OurText(
                                  text: categoryListText[index],
                                  fontSize: 14,
                                  fontBold: FontWeight.bold),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(color: Colors.grey[200]),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        OurText(
                            text: "Featured Product",
                            fontSize: 14,
                            fontBold: FontWeight.bold,
                            textColor: Colors.black),
                        Spacer(),
                        OurText(
                            text: "See All",
                            fontSize: 14,
                            fontBold: FontWeight.bold,
                            textColor: darkBlue),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    GridView.builder(
                      itemCount: 10,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          mainAxisExtent: 242,
                          crossAxisCount: 2),
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 150,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          image: AssetImage(Grid_img),
                                          fit: BoxFit.cover)),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                OurText(
                                  text: "Coffee Chair",
                                  fontBold: FontWeight.bold,
                                  fontSize: 14,
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                OurText(
                                  text: "Rp. 1.500.000",
                                  fontBold: FontWeight.bold,
                                  fontSize: 12,
                                  textColor: Color(0xff3669C9),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                      size: 20,
                                    ),
                                    OurText(
                                      text: "4.6",
                                      fontSize: 12,
                                      fontBold: FontWeight.bold,
                                    ),
                                    Spacer(),
                                    OurText(
                                      text: "86 Reviews",
                                      fontSize: 12,
                                      fontBold: FontWeight.bold,
                                    ),
                                    Spacer(),
                                    Icon(
                                      size: 20,
                                      Icons.more_vert,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

// _readUserDetails() async {
//   String uid = FirebaseAuth.instance.currentUser!.uid;
//   var user =
//       await FirebaseFirestore.instance.collection("users").doc(uid).get();
//   name = user['name'];
//   email = user['email'];
//   setState(() {});
// }
//
// _updateUserDetails() async {
//   String uid = FirebaseAuth.instance.currentUser!.uid;
//   var user = await FirebaseFirestore.instance
//       .collection('users')
//       .doc(uid)
//       .set({
//     "name":"new name",
//   },SetOptions(merge: true)
//   );
// }
}
