import 'package:admin_panal_shopapp/model/cart_model.dart';
import 'package:flutter/material.dart';

class HealthDetails {
  final healthData = const [
    CartModel(
      icon: 'assets/icons/burn.png',
      value: "150",
      title: "All Orders",
    ),
    CartModel(
      icon: 'assets/icons/burn.png',
      value: "42",
      title: "PriParing Orders",
    ),
    CartModel(
        icon: 'assets/icons/steps.png',
        value: "10,983",
        title: "Dilevery Orders"),
    CartModel(
        icon: 'assets/icons/distance.png',
        value: "7km",
        title: "Completed Orders"),
    CartModel(
      icon: 'assets/icons/sleep.png',
      value: "7h48m",
      title: "Cancel Orders",
    ),
  ];
}

class Colorscart {
  static final colors = const [
    Colors.yellow,
    Colors.blue,
    Colors.green,
    Colors.orange,
    Colors.red
  ];
}
