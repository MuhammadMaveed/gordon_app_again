import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../consts/colors.dart';

class CustomTextformField extends StatelessWidget {
  const CustomTextformField({
    super.key,
    this.hintText = "example@gmail.com",
    this.labelText = "",
    this.suffIcon,
    this.preIcon,
    this.enabledBorderColor = Colors.transparent,
    this.enabledBorderWidth = 0,
    this.borderRadius = 8,
    this.focusedBorderColor = Colors.transparent,
    this.focusedBorderWidth = 0,
    this.errorBorderColor = Colors.transparent,
    this.errorBorderWidth = 0,
    this.keyBoardType = TextInputType.text,
    this.maxLineLength = 1,
    this.maxlength = 100,
    this.obsecureText = false,
    this.verticalPadding = 8,
    this.horizentalPadding = 8,
    this.controller,
    this.validate,
    this.hintTextColor = Colors.black, this.middleSzeBox=10,
  });

  final TextEditingController? controller;
  final String? hintText;
  final String? labelText;
  final IconData? suffIcon;
  final IconData? preIcon;
  final Color? enabledBorderColor;
  final double? enabledBorderWidth;
  final Color? focusedBorderColor;
  final double? focusedBorderWidth;
  final Color? errorBorderColor;
  final Color? hintTextColor;
  final double? errorBorderWidth;
  final double? borderRadius;
  final TextInputType? keyBoardType;
  final int? maxLineLength;
  final int? maxlength;
  final bool? obsecureText;
  final double? verticalPadding;
  final double? horizentalPadding;
  final double? middleSzeBox;
  final String? Function(String?)? validate;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(labelText!,
            style: TextStyle(color: Color(0xff695C5C), fontSize: 14)),
        middleSzeBox!.heightBox,
        TextFormField(
          validator: validate,
          controller: controller,
          style: TextStyle(
              fontWeight: FontWeight.w400, fontSize: 15, color: Colors.black),
          obscureText: obsecureText!,
          inputFormatters: [
            LengthLimitingTextInputFormatter(maxlength!),
          ],
          maxLines: maxLineLength!,
          keyboardType: keyBoardType!,
          cursorColor: Colors.black,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
                vertical: verticalPadding!, horizontal: horizentalPadding!),
            fillColor: Color(0xffE8E9EB),
            filled: true,
            hintText: hintText,
            hintStyle: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: hintTextColor),
            // labelText: labelText,
            labelStyle: TextStyle(),
            suffixIcon: Icon(
              suffIcon,
              color: Colors.black,
            ),
            // prefixIcon: Icon(preIcon),
            border: InputBorder.none,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius!),
              borderSide: BorderSide(
                  color: enabledBorderColor!, width: enabledBorderWidth!),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius!),
              borderSide: BorderSide(
                  color: focusedBorderColor!, width: focusedBorderWidth!),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius!),
              borderSide: BorderSide(
                  color: errorBorderColor!, width: errorBorderWidth!),
            ),
          ),
        ),
      ],
    );
  }
}
