import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String iconURL;
  final String buttonText;

  const MyButton({super.key, required this.iconURL, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 90,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade500,
                  blurRadius: 20,
                  spreadRadius: 10),
            ],
          ),
          child: Center(
            child: Image.asset(iconURL),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          buttonText,
          style: TextStyle(
              fontSize: 16.5,
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade700),
        )
      ],
    );
  }
}
