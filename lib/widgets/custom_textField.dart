import 'package:admin_panal_shopapp/model/colors.dart';

import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final String? hintText;
  final String labelText;
  final IconData? icon;
  final Widget? suffixIcon;
  final int? maxLines;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final bool obscureText;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  const CustomTextfield({
    super.key,
    required this.labelText,
    this.icon,
    this.suffixIcon,
    this.validator,
    this.onChanged,
    this.obscureText = false,
    this.keyboardType,
    this.controller,
    this.hintText,
    this.maxLines,
  });
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      style: TextStyle(color: textColors),
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(
            color: textColors, fontSize: 13, fontWeight: FontWeight.w100),
        filled: true,
        fillColor: cardBackgroundColor,
        // enabledBorder: const OutlineInputBorder(
        //   borderSide: BorderSide(color: Colors.transparent),
        // ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        // focusedBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(25.0),
        //   borderSide: BorderSide(color: Theme.of(context).canvasColor),
        // ),
        // contentPadding: const EdgeInsets.symmetric(
        //   vertical: 5,
        // ),
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey),
      ),
    );
  }
}
