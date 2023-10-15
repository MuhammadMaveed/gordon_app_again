import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gordon_app_again/customs_widgets/custom_buttom.dart';
import 'package:gordon_app_again/customs_widgets/custom_textformfield.dart';
import 'package:gordon_app_again/customs_widgets/text.dart';
import 'package:velocity_x/velocity_x.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _namecontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();
  TextEditingController _conformpasswordcontroller = TextEditingController();

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
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const OurText(
                text: "Create An Account",
                fontBold: FontWeight.bold,
                fontSize: 25,
              ),
              10.heightBox,
              const OurText(
                text: "Enter the given details to create an account",
                fontBold: FontWeight.w400,
                fontSize: 14,
                textColor: Color(0xff838589),
              ),
              40.heightBox,
              CustomTextformField(
                controller: _emailcontroller,
                labelText: "Enter Your email",
                hintText: "Dummy@gmail.com",
              ),
              20.heightBox,
              CustomTextformField(
                controller: _namecontroller,
                labelText: "User Name",
                hintText: "Gordon",
              ),
              20.heightBox,
              CustomTextformField(
                controller: _passwordcontroller,
                obsecureText: true,
                suffIcon: Icons.visibility_off,
                labelText: "Password",
                hintText: "******",
              ),
              20.heightBox,
              CustomTextformField(
                controller: _conformpasswordcontroller,
                obsecureText: true,
                suffIcon: Icons.visibility_off,
                labelText: "Conform Password",
                hintText: "******",
              ),
              40.heightBox,
              OurButton(
                onPress: () {
                  if (_passwordcontroller.text ==
                      _conformpasswordcontroller.text) {
                    _registerUser();
                  } else {
                    Fluttertoast.showToast(
                        msg: "Password and Conformed Password are not same");
                  }
                },
                text: "Sign Up",
              ),
            ],
          ),
        ),
      ),
    );
  }

  _registerUser() async {
    await FirebaseAuth.instance
        .createUserWithEmailAndPassword(
            email: _emailcontroller.text, password: _passwordcontroller.text)
        .then((value) async {
      String uid = FirebaseAuth.instance.currentUser!.uid;
      await FirebaseFirestore.instance.collection("users").doc(uid).set({
        "uid": uid,
        "name": _namecontroller.text,
        "email": _emailcontroller.text,
      });
      Fluttertoast.showToast(msg: "Create User Successfully");
    }).onError((error, stackTrace) {
      Fluttertoast.showToast(msg: "$error");
    });
  }
}
