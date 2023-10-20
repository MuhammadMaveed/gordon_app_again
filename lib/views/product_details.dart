import 'package:flutter/material.dart';
import 'package:gordon_app_again/consts/colors.dart';
import 'package:gordon_app_again/customs_widgets/custom_buttom.dart';
import 'package:gordon_app_again/customs_widgets/text.dart';

import '../consts/images.dart';

class ProductName extends StatefulWidget {
  const ProductName({super.key});

  @override
  State<ProductName> createState() => _ProductNameState();
}

class _ProductNameState extends State<ProductName> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios),
        title: const Text("Product Details", style: TextStyle(color: Colors.black)),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 300,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage("assets/images/product_img.png"),
                          fit: BoxFit.cover),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const OurText(
                    fontSize: 24,
                    text: "Minimal Stand",
                    fontBold: FontWeight.bold,
                    textColor: darkBlue,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    children: [
                      OurText(
                        fontSize: 16,
                        text: "& 25.00",
                        fontBold: FontWeight.bold,
                      ),
                      Spacer(),
                      OurText(
                        fontSize: 16,
                        text: "CBM 13",
                        fontBold: FontWeight.bold,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.grey[200],
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const OurText(
                      text: "Product Description",
                      fontSize: 16,
                      fontBold: FontWeight.bold,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    RichText(
                        text: const TextSpan(
                      children: [
                        TextSpan(
                            style: TextStyle(fontSize: 14, color: Colors.black),
                            text: "Introducing our exquisitely crafted furniture "
                                "collection, designed to transform your living"
                                " spaces into havens of style, comfort, and "
                                "functionality. Each piece in our collection "
                                "is meticulously crea"
                                "ted with a blend of contemporary aesthetics, "
                                "exceptional craftsmanship, and premium..."),
                      ],
                    )),

                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          alert_circle,
                          width: 25,
                          height: 25,
                        ),
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: "You can order minimum ",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 14)),
                          TextSpan(
                              text: "4 items",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold)),
                        ])),
                      ],
                    ),

                    const SizedBox(
                      height: 10,
                    ),
                    const OurButton(
                      text: "Add To Cart",
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
}
