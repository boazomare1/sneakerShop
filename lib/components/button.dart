import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String btnText;
  final Function()? onTap;
  const MyButton({super.key, required this.btnText, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
      child: TextButton(
        onPressed: onTap,
        child: Text(btnText),
      ),
    );
  }
}
