// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import 'package:admin_panal_shopapp/data/data_cart.dart';
import 'package:admin_panal_shopapp/main.dart';
import 'package:admin_panal_shopapp/model/colors.dart';

class CustomCard extends StatelessWidget {
  final Widget child;
  final Color? color;
  final Color? BrderColor;
  final EdgeInsetsGeometry? padding;
  VoidCallback onTap;

  CustomCard({
    Key? key,
    required this.child,
    this.color,
    this.BrderColor,
    this.padding,
    required this.onTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: BrderColor ?? cardBackgroundColor,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(8.0),
            ),
            color: color ?? cardBackgroundColor,
          ),
          child: Padding(
            padding: padding ?? const EdgeInsets.all(12.0),
            child: child,
          )),
    );
  }
}
