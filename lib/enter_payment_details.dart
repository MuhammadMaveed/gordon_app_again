import 'package:flutter/material.dart';
import 'package:gordon_app_again/consts/colors.dart';
import 'package:gordon_app_again/customs_widgets/custom_buttom.dart';
import 'package:velocity_x/velocity_x.dart';

import 'customs_widgets/text.dart';

class EnterPaymentMethod extends StatefulWidget {
  const EnterPaymentMethod({super.key});

  @override
  State<EnterPaymentMethod> createState() => _EnterPaymentMethodState();
}

class _EnterPaymentMethodState extends State<EnterPaymentMethod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:Icon(Icons.arrow_back_ios) ,
        title: Text("Enter Payment Methods",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black)),
      ),
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                  SizedBox(height: 10,),
                  OurText(
                    text: "Total CBM of container",
                    fontSize: 24,
                    fontBold: FontWeight.bold,
                    textColor:darkBlue ,
                  ),

                ],
              ) ,
            ),
            OurButton(
              text: "Confirm 50% advance payment",
              fontSize: 14,
              fontBold: FontWeight.w500,
            ),
          ],
        ),
      ) ,
    );
  }
}
