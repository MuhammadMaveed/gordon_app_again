import 'package:flutter/material.dart';
import 'package:gordon_app_again/customs_widgets/custom_buttom.dart';
import 'package:gordon_app_again/customs_widgets/text.dart';

class PendingScreen extends StatefulWidget {
  const PendingScreen({super.key});

  @override
  State<PendingScreen> createState() => _PendingScreenState();
}

class _PendingScreenState extends State<PendingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 10),
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(1, 1),
                              spreadRadius: 1,
                              blurRadius: 5),
                        ],
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const OurText(
                                text: "Order No238562312",
                                fontSize: 16,
                                fontBold: FontWeight.bold,
                              ),
                              const Spacer(),
                              OurText(
                                textColor: Colors.grey[400],
                                text: "20/03/2020",
                                fontSize: 14,
                                fontBold: FontWeight.w400,
                              ),
                            ],
                          ),
                          const Divider(
                            color: Colors.grey,
                          ),
                          Row(
                            children: [
                              RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    text: "Quantity:",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey[400])),
                                const TextSpan(
                                    text: "08",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16)),
                              ])),
                              const Spacer(),
                              RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    text: "Total Amount:",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey[400])),
                                const TextSpan(
                                    text: "150",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16)),
                              ])),
                            ],
                          ),
                          const SizedBox(height: 15),
                          const Row(
                            children: [
                              SizedBox(
                                height: 50,
                                width: 100,
                                child: OurButton(
                                  text: "Details",
                                  fontBold: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              ),
                              Spacer(),
                              OurText(
                                text: "Pending",
                                textColor: Color(0xff27AE60),
                                fontBold: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
