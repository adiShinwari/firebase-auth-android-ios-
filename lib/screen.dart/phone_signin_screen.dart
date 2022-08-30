import 'package:flutter/material.dart';

import '../widgets/customButton.dart';
import '../widgets/custom_textfield.dart';

class PhoneSignin extends StatefulWidget {
  static const routeName = './PhoneSignIn';
  const PhoneSignin({Key? key}) : super(key: key);

  @override
  State<PhoneSignin> createState() => _PhoneSigninState();
}

class _PhoneSigninState extends State<PhoneSignin> {
  final phoneNoController = TextEditingController();

  @override
  void dispose() {
    phoneNoController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Signin with phone number')),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomTextField(
                    controller: phoneNoController,
                    hintText: 'Enter your phone number'),
              ),
              const SizedBox(
                height: 40,
              ),
              CustomButtom(
                onPressed: () {},
                buttonText: 'Send OTP',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
