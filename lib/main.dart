import 'package:firebase_auth/firebase_options.dart';
import 'package:firebase_auth/screen.dart/login_email_password_screen.dart';
import 'package:firebase_auth/screen.dart/login_screen.dart';
import 'package:firebase_auth/screen.dart/phone_signin_screen.dart';
import 'package:firebase_auth/screen.dart/signup_email_password_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Firebase Auth',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginScreen(),
      routes: {
        LoginEmailPasswordScreen.routeName: (context) =>
            const LoginEmailPasswordScreen(),
        SignupEmailPasswordScreen.routeName: (context) =>
            const SignupEmailPasswordScreen(),
        PhoneSignin.routeName: (context) => const PhoneSignin()
      },
    );
  }
}
