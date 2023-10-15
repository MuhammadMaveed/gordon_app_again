import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gordon_app_again/views/auth_screens/login_screen.dart';
import 'package:gordon_app_again/views/auth_screens/reset_password.dart';
import 'package:gordon_app_again/views/auth_screens/signup_screen.dart';
import 'package:gordon_app_again/views/auth_screens/verification_screen.dart';
import 'firebase_options.dart';
void main()  async{
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

      debugShowCheckedModeBanner:false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:LoginScreen(),
    );
  }
}
