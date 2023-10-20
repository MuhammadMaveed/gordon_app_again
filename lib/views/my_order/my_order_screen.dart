import 'package:flutter/material.dart';
import 'package:gordon_app_again/views/my_order/pending_screen.dart';
import 'package:gordon_app_again/views/my_order/remaining_payment_screen.dart';

class MyOrder extends StatefulWidget {
  const MyOrder({super.key});

  @override
  State<MyOrder> createState() => _MyOrderState();
}

class _MyOrderState extends State<MyOrder> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios_rounded),
          title: Text("My Order",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20)),
        ),
        body: Column(
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
                    text: "Pending",
                  ),
                  Tab(
                    text: "Remaining Payment",
                  ),
                  Tab(
                    text: "On the way",
                  ),
                ]),
            Expanded(
              child: TabBarView(children: [
                PendingScreen(),
                RemainingPayment(),
                Center(
                  child: Container(
                    child: Text("Empty",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
