import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'package:qr_flutter/qr_flutter.dart';
import 'package:syncfusion_flutter_barcodes/barcodes.dart';

class InvocePage extends StatelessWidget {
  const InvocePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width * 0.25,
      child: SingleChildScrollView(
        // physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
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
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                              width: 80,
                              height: 80,
                              child: QrImageView(data: 'P-5555-1777')),
                          Text(
                            'P-5555-1777',
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Items',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Qty',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Price',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  SizedBox(
                    // height: MediaQuery.of(context).size.height * 0.3,
                    // width: MediaQuery.of(context).size.width * 0.2,
                    child: ListView.builder(
                      itemCount: 11,
                      shrinkWrap: true,
                      // physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return SingleChildScrollView(
                          // physics: NeverScrollableScrollPhysics(),
                          child: Column(
                            children: [
                              InvoceCart(),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('Dlevery : 1000'),
                            Text('Cost : 25000'),
                            Text('Total : 26000'),
                            Column(
                              children: [
                                Divider(
                                  color: Colors.black,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Order Date :'),
                                    Text(
                                        '${DateTime.now().day} / ${DateTime.now().month} / ${DateTime.now().year}'),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Print Date :'),
                                    Text(
                                        '${DateTime.now().day} / ${DateTime.now().month} / ${DateTime.now().year}'),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: SizedBox(
                                    height: 60,
                                    width: 230,
                                    child: SfBarcodeGenerator(
                                      value: 'P-5555-1777',
                                      textStyle: TextStyle(fontSize: 15),
                                      showValue: true,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 200,
                                  child: Divider(
                                    color: Colors.black,
                                  ),
                                ),
                                Text('Thanks for your Shopping  :)'),
                                Text('Visit Again'),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InvoceCart extends StatelessWidget {
  const InvoceCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'Banana',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          Text(
            '1',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          Text(
            '1500',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}




// import 'package:flutter/material.dart';
// import 'package:qr_flutter/qr_flutter.dart';

// class PDFpage extends StatelessWidget {
//   const PDFpage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Column(
//                 children: [
//                   Container(
//                     child: Text(
//                       'Karam Zeway',
//                       style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                   Container(
//                     child: Text(
//                       '1234567890',
//                       style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 13,
//                       ),
//                     ),
//                   ),
//                   Container(
//                     child: Text(
//                       'Duhok , Arya City, 12/4/15',
//                       style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 10,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               Column(
//                 children: [
//                   Container(
//                     width: 80,
//                     height: 80,
//                     child: QrImageView(
//                       data: 'P-5555-1777',
//                     ),
//                   ),
//                   Text(
//                     'P-5555-1777',
//                     style: TextStyle(
//                       fontSize: 10,
//                     ),
//                   )
//                 ],
//               )
//             ],
//           ),
//           Divider(
//             color: Colors.black,
//           ),
//           Row(
//             mainAxisSize: MainAxisSize.max,
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 'Items',
//                 style: TextStyle(
//                   color: Colors.black,
//                 ),
//               ),
//               Text(
//                 'Qty',
//                 style: TextStyle(
//                   color: Colors.black,
//                 ),
//               ),
//               Text(
//                 'Price',
//                 style: TextStyle(
//                   color: Colors.black,
//                 ),
//               ),
//             ],
//           ),
//           Divider(
//             color: Colors.black,
//           ),
//           SizedBox(
//             height: MediaQuery.of(context).size.height * 0.4,
//             width: MediaQuery.of(context).size.width * 0.2,
//             child: ListView.builder(
//               itemBuilder: (context, index) {
//                 return Column(
//                   children: [
//                     InvoceCart(),
//                   ],
//                 );
//               },
//               itemCount: 100,
//               shrinkWrap: true,
//             ),
//           ),
//           Divider(
//             color: Colors.black,
//           ),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.end,
//             mainAxisAlignment: MainAxisAlignment.end,
//             mainAxisSize: MainAxisSize.max,
//             children: [
//               Container(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.end,
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     Text('Dlevery : 1000'),
//                     Text('Cost : 25000'),
//                     Text('Total : 26000'),
//                   ],
//                 ),
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }

// class InvoceCart extends StatelessWidget {
//   const InvoceCart({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Row(
//         mainAxisSize: MainAxisSize.max,
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text(
//             'Banana',
//             style: TextStyle(
//               color: Colors.black,
//             ),
//           ),
//           Text(
//             '1',
//             style: TextStyle(
//               color: Colors.black,
//             ),
//           ),
//           Text(
//             '1500',
//             style: TextStyle(
//               color: Colors.black,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
