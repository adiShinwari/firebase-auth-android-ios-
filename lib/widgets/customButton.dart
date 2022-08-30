import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  final String buttonText;
  final Function onPressed;
  const CustomButtom({
    required this.buttonText,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPressed();
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: double.infinity,
          height: 40,
          color: Theme.of(context).primaryColor,
          child: Center(
            child: Text(
              buttonText,
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
