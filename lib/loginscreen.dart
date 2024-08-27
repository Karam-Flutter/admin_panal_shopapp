import 'package:admin_panal_shopapp/ProductPage.dart';
import 'package:admin_panal_shopapp/main.dart';
import 'package:admin_panal_shopapp/widgets/custom_textField.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Login',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 50),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.3,
            child: Column(
              children: [
                CustomTextfield(
                  labelText: 'Email',
                ),
                SizedBox(height: 20),
                CustomTextfield(
                  labelText: 'Password',
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Get.offAll(
                SidebarXExampleApp(),
              );
            },
            child: Text('Login'),
          ),
        ],
      ),
    );
  }
}
