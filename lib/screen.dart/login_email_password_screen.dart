import 'package:firebase_auth/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

import '../widgets/customButton.dart';

class LoginEmailPasswordScreen extends StatefulWidget {
  static const routeName = './login_email_password_screen.dart';
  const LoginEmailPasswordScreen({Key? key}) : super(key: key);

  @override
  State<LoginEmailPasswordScreen> createState() =>
      _LoginEmailPasswordScreenState();
}

class _LoginEmailPasswordScreenState extends State<LoginEmailPasswordScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login with email password')),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              const Text(
                'Login',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomTextField(
                    controller: emailController, hintText: 'Enter your email'),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomTextField(
                    controller: passwordController,
                    hintText: 'Enter your password'),
              ),
              const SizedBox(
                height: 40,
              ),
              CustomButtom(
                onPressed: () {},
                buttonText: 'Login',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
