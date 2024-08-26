import 'package:admin_panal_shopapp/dashboardPage.dart';
import 'package:flutter/material.dart';

class navitest extends StatelessWidget {
  const navitest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          DashboardScreen(),
        ],
      ),
    );
  }
}
