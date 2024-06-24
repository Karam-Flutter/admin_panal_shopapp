import 'package:flutter/material.dart';

class SideBarModel {
  final IconData icon;
  final String title;
  final Function onTap;

  SideBarModel({required this.icon, required this.title, required this.onTap});
}
