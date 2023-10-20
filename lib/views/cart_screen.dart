import 'package:flutter/material.dart';
import 'package:gordon_app_again/consts/colors.dart';
import 'package:gordon_app_again/customs_widgets/custom_buttom.dart';
import 'package:gordon_app_again/customs_widgets/text.dart';
import 'package:velocity_x/velocity_x.dart';

import '../consts/images.dart';
import '../models/cart_model.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  var cartCunt = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 20)),
      ),
      body: Stack(
        children: [
          Container(
            height: context.screenHeight,
            width: context.screenWidth,
            decoration: const BoxDecoration(),
            child: ListView.builder(
              itemCount:modelCart.length,
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    modelCart[index].pImg),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        flex: 4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    OurText(
                                      fontSize: 16,
                                      fontBold: FontWeight.bold,
                                      text:modelCart[index].pName,
                                      textColor: darkBlue,
                                    ),
                                    OurText(
                                      text:modelCart[index].pPrice,
                                      fontBold: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Icon(Icons.cancel_outlined),
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          cartCunt++;
                                        });
                                      },
                                      child: Container(
                                        height: 25,
                                        width: 25,
                                        decoration: BoxDecoration(
                                            color: Colors.grey[200],
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: const Icon(Icons.add,
                                            color: Colors.black),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    OurText(
                                      text: cartCunt.toString(),
                                      fontBold: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          cartCunt--;
                                        });
                                      },
                                      child: Container(
                                        height: 25,
                                        width: 25,
                                        decoration: BoxDecoration(
                                            color: Colors.grey[200],
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: const Icon(
                                          Icons.add,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                 OurText(
                                  text: modelCart[index].cbm,
                                  fontBold: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      OurText(
                        text: "Advance payment",
                        fontBold: FontWeight.bold,
                        fontSize: 20,
                        textColor: Colors.grey,
                      ),
                      Spacer(),
                      OurText(
                        text: "& 45.00",
                        fontBold: FontWeight.bold,
                        fontSize: 20,
                        textColor: Colors.black,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      OurText(
                        text: "Total:",
                        fontBold: FontWeight.bold,
                        fontSize: 20,
                        textColor: Colors.grey,
                      ),
                      Spacer(),
                      OurText(
                        text: "& 95.00",
                        fontBold: FontWeight.bold,
                        fontSize: 20,
                        textColor: Colors.black,
                      ),
                    ],
                  ),
                  OurButton(
                    text: "Check Out",
                    fontBold: FontWeight.bold,
                    fontSize: 16,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  List<dynamic> modelCart = [
    CartModel(
      cbm: "CBM 2",
      pImg: product_img,
      pName: "Minimal Stand",
      pPrice: "25.00",
      pQuantity: "8",
    ),
    CartModel(
      cbm: "",
      pImg: product_img,
      pName: "Minimal Stand",
      pPrice: "25.00",
      pQuantity: "8",
    ),
    CartModel(
      cbm: "CBM 2",
      pImg: product_img,
      pName: "Minimal Stand",
      pPrice: "25.00",
      pQuantity: "8",
    ),

  ];
}
