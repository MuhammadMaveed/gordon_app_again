import 'package:flutter/material.dart';
import 'package:gordon_app_again/consts/colors.dart';
import 'package:gordon_app_again/customs_widgets/custom_buttom.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../customs_widgets/text.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios_new_outlined,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const OurText(
                text: "Verification",
                fontBold: FontWeight.bold,
                fontSize: 25,
              ),
              10.heightBox,
              const OurText(
                text: "We send you a confirmation on ",
                fontBold: FontWeight.w400,
                fontSize: 14,
                textColor: Color(0xff838589),
              ),
              Row(
                children: [
                  const OurText(
                    text: "Gor*******@gmail.com ",
                    fontBold: FontWeight.w400,
                    fontSize: 14,
                    textColor: Color(0xff838589),
                  ),
                  const OurText(
                    text: "Wrong email? ",
                    fontBold: FontWeight.bold,
                    fontSize: 14,
                    textColor: darkBlue,
                  ),
                ],
              ),
              50.heightBox,
              Center(
                child: Image.asset("assets/images/Group 724 (2).png",
                    width: 150, height: 100),
              ),
              50.heightBox,
              Row(
                children: [
                  const OurText(
                    text: "Retry for new confirmation",
                    fontBold: FontWeight.w400,
                    fontSize: 14,
                    textColor: Color(0xff838589),
                  ),
                  Spacer(),
                  const OurText(
                    text: "03:05",
                    fontBold: FontWeight.bold,
                    fontSize: 14,
                    textColor: Color(0xff838589),
                  ),
                ],
              ),
              40.heightBox,
              OurButton(
                text: "Continue",
                fontBold: FontWeight.bold,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
