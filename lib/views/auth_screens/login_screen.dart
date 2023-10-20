import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gordon_app_again/consts/colors.dart';
import 'package:gordon_app_again/customs_widgets/custom_buttom.dart';
import 'package:gordon_app_again/customs_widgets/custom_textformfield.dart';
import 'package:gordon_app_again/customs_widgets/text.dart';
import 'package:gordon_app_again/views/auth_screens/signup_screen.dart';
import 'package:gordon_app_again/views/auth_screens/verification_screen.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool checkContainer = false;
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();
  final _key = GlobalKey<FormState>();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form(
        key: _key,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              50.heightBox,
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: OurText(
                  text: "LOGO",
                  fontSize: 24,
                  fontBold: FontWeight.bold,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const OurText(
                          text: "Hi, Welcome Back!",
                          fontBold: FontWeight.bold,
                          fontSize: 24,
                        ),
                        5.widthBox,
                        const Icon(
                          Icons.waving_hand,
                          color: Colors.amber,
                        )
                      ],
                    ),
                    20.heightBox,
                    CustomTextformField(
                      validate: (val) =>
                          val!.isEmpty ? "Kindly enter your email" : null,
                      controller: _emailcontroller,
                      labelText: "Email",
                    ),
                    20.heightBox,
                    CustomTextformField(
                      validate: (val) =>
                          val!.isEmpty ? "Kindly enter your password" : null,
                      controller: _passwordcontroller,
                      suffIcon: Icons.visibility_off,
                      obsecureText: true,
                      labelText: "Password",
                      hintText: "Enter Your Password",
                    ),
                    20.heightBox,
                    Row(
                      children: [
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                checkContainer = !checkContainer;
                              });
                            },
                            child: checkContainer
                                ? Container(
                                    width: 25,
                                    height: 25,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(
                                            color: Colors.black, width: 1)),
                                    child: const Center(
                                        child: Icon(
                                      Icons.check_outlined,
                                      color: Colors.black,
                                      size: 20,
                                    )),
                                  )
                                : Container(
                                    width: 25,
                                    height: 25,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(
                                            color: Colors.black, width: 1)),
                                  )),
                        5.widthBox,
                        const OurText(
                          text: "Remember Me",
                          fontSize: 16,
                          fontBold: FontWeight.bold,
                        ),
                        const Spacer(),
                        const OurText(
                          text: "Forgot Password?",
                          fontSize: 16,
                          fontBold: FontWeight.bold,
                          textColor: Color(0xffE86969),
                        ),
                      ],
                    ),
                    20.heightBox,
                    InkWell(
                      onTap: () {
                        if (_key.currentState!.validate()) {
                          _loginUser();
                        }
                      },
                      child: isLoading
                          ? Container(
                              height: 55,
                              width: double.infinity,
                              child: LoadingOverlay(
                                  progressIndicator: CircularProgressIndicator(
                                    color: darkBlue,
                                  ),
                                  isLoading: isLoading,
                                  child: Container()),
                            )
                          : OurButton(
                              text: "Log In",
                            ),
                    ),
                    20.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const OurText(
                          text: "Don’t have an account ?",
                          fontSize: 15,
                          fontBold: FontWeight.bold,
                          textColor: Colors.black,
                        ),
                        10.widthBox,
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignUpScreen(),
                                ));
                          },
                          child: OurText(
                            text: "Sign Up",
                            fontSize: 15,
                            fontBold: FontWeight.bold,
                            textColor: darkBlue,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _loginUser() async {
    makeLoadingTrue();
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(
            email: _emailcontroller.text, password: _passwordcontroller.text)
        .then((value) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => VerificationScreen(),
          ));
      makeLoadingFalse();
      Fluttertoast.showToast(msg: "Login Successfully");
    }).onError((error, stackTrace) {
      makeLoadingFalse();
      Fluttertoast.showToast(msg: error.toString());
    });
  }

  makeLoadingTrue() {
    setState(() {
      isLoading = true;
    });
  }

  makeLoadingFalse() {
    setState(() {
      isLoading = false;
    });
  }
}
