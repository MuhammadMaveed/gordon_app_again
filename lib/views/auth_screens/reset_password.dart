import 'package:flutter/material.dart';
import 'package:gordon_app_again/customs_widgets/custom_buttom.dart';
import 'package:gordon_app_again/customs_widgets/custom_textformfield.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../customs_widgets/text.dart';
class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  TextEditingController _emailphonecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios_new_outlined,
        ),
      ),
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const OurText(
                text: "Reset Password",
                fontBold: FontWeight.bold,
                fontSize: 25,
              ),
              10.heightBox,
              const OurText(
                text: "Enter your email that we will send password changing email",
                fontBold:FontWeight.w400,
                fontSize: 14,
                textColor:Color(0xff838589) ,
              ),
              40.heightBox,
              CustomTextformField(
                controller: _emailphonecontroller,
                labelText: "Email/ Phone",
                hintText: "Gordon50app@gmail.com",
              ),
              40.heightBox,
              OurButton(
                text: "Reset",
                fontSize: 14,
                fontBold: FontWeight.bold,
              ),
            ],
          ),
        ),
      ) ,
    );
  }
}
