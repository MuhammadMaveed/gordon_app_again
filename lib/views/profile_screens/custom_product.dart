import 'package:flutter/material.dart';
import 'package:gordon_app_again/consts/colors.dart';
import 'package:gordon_app_again/customs_widgets/text.dart';

class CustomProduct extends StatefulWidget {
  const CustomProduct({super.key});

  @override
  State<CustomProduct> createState() => _CustomProductState();
}

class _CustomProductState extends State<CustomProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios_rounded),
          title: Text("Custom Product",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20)),
        ),
        body: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: 15,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image:
                                  AssetImage("assets/images/Banner default.png"),
                              fit: BoxFit.fill)),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              OurText(
                                text: "Minimal Stand",
                                fontBold: FontWeight.w500,
                                textColor: darkBlue,
                                fontSize: 14,
                              ),
                              Spacer(),
                              OurText(
                                text: "Pending",
                                fontBold: FontWeight.w600,
                                textColor: Colors.black,
                                fontSize: 10,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          RichText(
                              text: TextSpan(
                            children: [
                              TextSpan(
                                  text: "Introducing our exquisitely crafte"
                                      "d furniture collection, designed to...  ",
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500)),
                            ],
                          )),
                          SizedBox(
                            height: 10,
                          ),
                          OurText(
                            text: "19/02/2023",
                            fontBold: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ));
  }
}
