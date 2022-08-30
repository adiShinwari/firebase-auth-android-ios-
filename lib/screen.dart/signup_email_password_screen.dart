import 'package:flutter/material.dart';

import '../widgets/customButton.dart';
import '../widgets/custom_textfield.dart';

class SignupEmailPasswordScreen extends StatefulWidget {
  static const routeName = '.signupemailpasswordscreen';
  const SignupEmailPasswordScreen({Key? key}) : super(key: key);

  @override
  State<SignupEmailPasswordScreen> createState() =>
      _SignupEmailPasswordScreenState();
}

class _SignupEmailPasswordScreenState extends State<SignupEmailPasswordScreen> {
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
      appBar: AppBar(title: const Text('Signup with email password')),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              const Text(
                'Signup',
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
                buttonText: 'Signup',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
