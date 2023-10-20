import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gordon_app_again/consts/colors.dart';
import 'package:gordon_app_again/enter_payment_details.dart';
import 'package:gordon_app_again/views/add_shopping_address.dart';
import 'package:gordon_app_again/views/all_category/all_category.dart';
import 'package:gordon_app_again/views/all_category/category_name.dart';
import 'package:gordon_app_again/views/auth_screens/login_screen.dart';
import 'package:gordon_app_again/views/auth_screens/reset_password.dart';
import 'package:gordon_app_again/views/auth_screens/signup_screen.dart';
import 'package:gordon_app_again/views/auth_screens/verification_screen.dart';
import 'package:gordon_app_again/views/cart_screen.dart';
import 'package:gordon_app_again/views/featured_product/featured_product.dart';
import 'package:gordon_app_again/views/home_screens/home_screen.dart';
import 'package:gordon_app_again/views/my_order/my_order_screen.dart';
import 'package:gordon_app_again/views/product_details.dart';
import 'package:gordon_app_again/views/profile_screens/custom_product.dart';
import 'package:gordon_app_again/views/profile_screens/profile_screen.dart';
import 'package:gordon_app_again/views/search_screen/search_screen.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
            color: Colors.white,
            centerTitle: true,
            titleTextStyle: TextStyle(
                color: darkBlue,
                fontWeight: FontWeight.bold,
                fontSize: 16,
                letterSpacing: 1)),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:AddShoppingAddress(),
    );
  }
}
