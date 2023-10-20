import 'package:flutter/material.dart';
import 'package:gordon_app_again/customs_widgets/custom_buttom.dart';
import 'package:gordon_app_again/customs_widgets/custom_textformfield.dart';

class AddShoppingAddress extends StatefulWidget {
  const AddShoppingAddress({super.key});

  @override
  State<AddShoppingAddress> createState() => _AddShoppingAddressState();
}

class _AddShoppingAddressState extends State<AddShoppingAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_rounded),
        title: Text("Add shipping address",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              CustomTextformField(
                labelText: "Full Name",
                hintText: "Gordon khan",
              ),
              SizedBox(
                height: 15,
              ),
              CustomTextformField(
                hintText: "Ex: 25 Robert Latouche Street",
                labelText: "Address",
              ),
              SizedBox(
                height: 15,
              ),
              CustomTextformField(
                hintText: "Ex: 25 Robert Latouche Street",
                labelText: "Zipcode (Postal Code)",
              ),
              SizedBox(
                height: 15,
              ),
              CustomTextformField(
                hintText: "Pakistan",
                labelText: "Country",
              ),
              SizedBox(
                height: 15,
              ),
              CustomTextformField(
                hintText: "Solo dev",
                labelText: "Company Name",
              ),
              SizedBox(
                height: 15,
              ),
              CustomTextformField(
                hintText: "+1 090785601",
                labelText: "Phone Number",
              ),
              SizedBox(height: 60),
              OurButton(
                text: "Save address",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
