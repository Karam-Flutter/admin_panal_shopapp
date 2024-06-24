import 'package:admin_panal_shopapp/data/data_orders.dart';
import 'package:admin_panal_shopapp/main.dart';
import 'package:admin_panal_shopapp/model/colors.dart';
import 'package:flutter/material.dart';

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
                        LiveOrders.liveoders[index].totalcost,
                        style: TextStyle(color: textColors),
                      ),
                      SizedBox(
                          width: 80,
                          height: 20,
                          child: ElevatedButton(
                              onPressed: () {}, child: Text('Print')))
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}
