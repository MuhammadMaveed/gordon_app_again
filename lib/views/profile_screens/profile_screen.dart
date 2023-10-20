import 'package:flutter/material.dart';
import 'package:gordon_app_again/customs_widgets/text.dart';
import 'package:gordon_app_again/views/home_screens/home_screen.dart';
import 'package:gordon_app_again/views/profile_screens/edit_profile.dart';

import '../../models/profile_screens_model/profile_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(Icons.logout),
          SizedBox(
            width: 10,
          ),
        ],
        title: Text("Profile",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 30),
            Row(
              children: [
                Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      "assets/images/Ellipse 30.png",
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    )),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    OurText(
                      text: "Maveed",
                      fontBold: FontWeight.bold,
                      fontSize: 20,
                    ),
                    OurText(
                      text: "Maveed@gmail.com",
                      fontSize: 14,
                      textColor: Colors.grey,
                    ),
                  ],
                ),
              ],
            ),
            ListView.builder(
              itemCount: 5,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                tittleModel[index].navigateIcon,
                          ));
                    },
                    child: Container(
                      decoration: BoxDecoration(color: Colors.grey[200]),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 16),
                        child: Row(
                          children: [
                            OurText(
                              text: tittleModel[index].tittleName,
                              textColor: Colors.black,
                              fontSize: 18,
                              fontBold: FontWeight.w600,
                            ),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios_rounded),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }

  List<dynamic> tittleModel = [
    ProfileScreenModel(tittleName: "Profile", navigateIcon:EditProfile()),
    ProfileScreenModel(
        tittleName: "Custom Product", navigateIcon: HomeScreen()),
    ProfileScreenModel(tittleName: "Support", navigateIcon: HomeScreen()),
    ProfileScreenModel(
        tittleName: "Order Tracking", navigateIcon: HomeScreen()),
    ProfileScreenModel(
        tittleName: "Add shipping address", navigateIcon: HomeScreen()),
  ];
}
