import 'package:admin_panal_shopapp/ProductPage.dart';
import 'package:admin_panal_shopapp/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

class LogoutScreen extends StatelessWidget {
  const LogoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Logout',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                Get.dialog(AlertDialog(
                    backgroundColor: Colors.white,
                    content: Container(
                      height: 100,
                      width: 100,
                      child: Column(
                        children: [
                          Center(
                            child: Text('Are you sure you want to logout?'),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'You are must be printed your receipt',
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Get.offAll(Loginscreen());
                        },
                        child: Text('Print'),
                      ),
                    ]));
              },
              child: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
