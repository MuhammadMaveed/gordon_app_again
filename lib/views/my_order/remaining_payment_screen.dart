import 'package:flutter/material.dart';
import 'package:gordon_app_again/views/my_order/pending_screen.dart';

class RemainingPayment extends StatefulWidget {
  const RemainingPayment({super.key});

  @override
  State<RemainingPayment> createState() => _RemainingPaymentState();
}

class _RemainingPaymentState extends State<RemainingPayment> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              TabBar(
                  automaticIndicatorColorAdjustment: true,
                  indicatorSize: TabBarIndicatorSize.tab,
                  physics: BouncingScrollPhysics(),
                  indicatorColor: Colors.black,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey[400],
                  unselectedLabelStyle: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                  labelStyle:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  tabs: [
                    Tab(
                      text: "Completed",
                    ),
                    Tab(
                      text: "Cancelled",
                    ),
                  ]),
              Expanded(
                child: TabBarView(children: [
                  PendingScreen(),
                  PendingScreen(),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
