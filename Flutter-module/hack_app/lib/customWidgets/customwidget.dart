import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final IconData icon;
  final bool obscureText;
  final String hintText;

  const CustomTextfield({
    Key? key,
    required this.icon,
    required this.obscureText,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      style: TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(30.0),
        ),
        prefixIcon: Icon(
          icon,
          color: Colors.white.withOpacity(.3),
        ),
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 20.0, color: Colors.white54),
      ),
      cursorColor: Colors.white.withOpacity(.5),
    );
  }
}
