import 'package:flutter/material.dart';
import 'package:gordon_app_again/consts/colors.dart';
import 'package:gordon_app_again/customs_widgets/custom_textformfield.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text("Profile",
            style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 16),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Center(
              child: Stack(
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
                  Positioned(
                    bottom: 2,
                    right: 2,
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration:
                          BoxDecoration(color: darkBlue, shape: BoxShape.circle),
                      child: Icon(Icons.edit_calendar_outlined,
                          color: Colors.white, size: 15),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            CustomTextformField(
              labelText:"Email" ,
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextformField(
              obsecureText:true ,
              labelText:"Password" ,
              hintText: "******",
            ),
          ],
        ),
      ),
    );
  }
}
