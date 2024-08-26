import 'package:admin_panal_shopapp/data/data_orders.dart';

import 'package:admin_panal_shopapp/model/colors.dart';
import 'package:admin_panal_shopapp/widgets/InvocePage.dart';
import 'package:admin_panal_shopapp/widgets/topbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:intl/intl.dart';

class LiveOdersCart extends StatelessWidget {
  const LiveOdersCart({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: LiveOrders.liveoders.length,
        itemBuilder: (context, index) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.08,
            child: Card(
              color: cardBackgroundColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        LiveOrders.liveoders[index].index.toString(),
                        style: TextStyle(color: textColors),
                      ),
                      Text(
                        LiveOrders.liveoders[index].name,
                        style: TextStyle(color: textColors),
                      ),
                      Text(
                        LiveOrders.liveoders[index].mobilenumber,
                        style: TextStyle(color: textColors),
                      ),
                      Text(
                        NumberFormat.decimalPatternDigits().format(
                              LiveOrders.liveoders[index].totalcost,
                            ) +
                            " IQD",
                        style: TextStyle(color: textColors),
                      ),
                      Row(children: [
                        SizedBox(
                          child: Center(
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text('Print'),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Center(
                            child: IconButton(
                              onPressed: () {
                                Get.dialog(
                                  AlertDialog(
                                    content: InvocePage(),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Get.back();
                                        },
                                        child: Text('Cancel'),
                                      ),
                                      TextButton(
                                        onPressed: () {},
                                        child: Text('Print'),
                                      ),
                                    ],
                                  ),
                                );
                              },
                              icon: Icon(
                                Icons.remove_red_eye_sharp,
                                color: Colors.greenAccent,
                              ),
                            ),
                          ),
                        ),
                      ])
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}
