import 'package:firebase_auth/screen.dart/login_email_password_screen.dart';
import 'package:firebase_auth/screen.dart/phone_signin_screen.dart';
import 'package:firebase_auth/screen.dart/signup_email_password_screen.dart';
import 'package:flutter/material.dart';

import '../widgets/customButton.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          CustomButtom(
            buttonText: 'Email/Password Sign up',
            onPressed: () {
              Navigator.pushNamed(context, SignupEmailPasswordScreen.routeName);
            },
          ),
          CustomButtom(
            buttonText: 'Email/Password Login in',
            onPressed: () {
              Navigator.pushNamed(context, LoginEmailPasswordScreen.routeName);
            },
          ),
          CustomButtom(
            buttonText: 'Phone Sign in',
            onPressed: () {
              Navigator.pushNamed(context, PhoneSignin.routeName);
            },
          ),
          CustomButtom(
            buttonText: 'Google Sign in',
            onPressed: () {},
          ),
          CustomButtom(
            buttonText: 'Facebook sign in',
            onPressed: () {},
          ),
          CustomButtom(
            buttonText: 'Anonymous Sign in',
            onPressed: () {},
          ),
        ],
      )),
    );
  }
}
