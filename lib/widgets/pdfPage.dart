import 'package:admin_panal_shopapp/model/colors.dart';
import 'package:flutter/material.dart';

class PDFpage extends StatelessWidget {
  const PDFpage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            child: Text(
              'Karam Zeway',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            child: Text(
              '1234567890',
              style: TextStyle(
                color: Colors.black,
                fontSize: 13,
              ),
            ),
          ),
          Container(
            child: Text(
              'Duhok , Arya City, 12/4/15',
              style: TextStyle(
                color: Colors.black,
                fontSize: 10,
              ),
            ),
          ),
          Divider(
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
