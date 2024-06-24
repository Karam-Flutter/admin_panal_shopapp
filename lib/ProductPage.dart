import 'package:admin_panal_shopapp/AddProduct.dart';
import 'package:admin_panal_shopapp/data/data_poduct_Model.dart';
import 'package:admin_panal_shopapp/main.dart';
import 'package:admin_panal_shopapp/model/colors.dart';
import 'package:admin_panal_shopapp/widgets/responsive.dart';
import 'package:admin_panal_shopapp/widgets/search.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:sidebarx/sidebarx.dart';

class ProductPAge extends StatelessWidget {
  const ProductPAge({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    return Scaffold(
      floatingActionButton: isDesktop
          ? null
          : FloatingActionButton.extended(
              onPressed: () {},
              label: Text('Add Product'),
              icon: Icon(Icons.add),
              backgroundColor: Colors.greenAccent,
            ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  // if (isDesktop)
                  Expanded(
                    flex: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: SearchCustom(),
                    ),
                  ),
                  if (isDesktop)
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height * 0.07,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Add Product',
                              style: TextStyle(color: Colors.greenAccent),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: cardBackgroundColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
              SizedBox(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Pruducts",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "See All Pruducts",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w100,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'ID',
                          style: TextStyle(color: textColors),
                        ),
                        Text(
                          '     Image',
                          style: TextStyle(color: textColors),
                        ),
                        Text(
                          '     Name',
                          style: TextStyle(color: textColors),
                        ),
                        Text(
                          'Buy Price',
                          style: TextStyle(color: textColors),
                        ),
                        Text(
                          'Sell Price',
                          style: TextStyle(color: textColors),
                        ),
                        Text(
                          'Quantity',
                          style: TextStyle(color: textColors),
                        ),
                        SizedBox(
                          width: !isDesktop ? 40 : 40,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                          itemCount: AllProducts.allProducts.length,
                          itemBuilder: (context, index) {
                            return Container(
                              decoration: BoxDecoration(
                                  color: cardBackgroundColor,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(15.0),
                                  )),
                              margin: EdgeInsets.all(4.0),
                              width: MediaQuery.of(context).size.width * 0.7,
                              height: MediaQuery.of(context).size.height * 0.08,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    AllProducts.allProducts[index].index
                                        .toString(),
                                    style: TextStyle(color: textColors),
                                  ),
                                  Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.05,
                                      width: MediaQuery.of(context).size.width *
                                          0.05,
                                      child: Image.network(
                                        AllProducts.allProducts[index].image,
                                      )),
                                  Text(
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    AllProducts.allProducts[index].name,
                                    style: TextStyle(color: textColors),
                                  ),
                                  Text(
                                    AllProducts.allProducts[index].buyprice,
                                    style: TextStyle(color: textColors),
                                  ),
                                  Text(
                                    AllProducts.allProducts[index].sellprice,
                                    style: TextStyle(color: textColors),
                                  ),
                                  Text(
                                    AllProducts.allProducts[index].quantity,
                                    style: TextStyle(color: textColors),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.edit,
                                          color: Colors.greenAccent,
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.delete,
                                          color: Colors.redAccent,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            );
                          })),
                ],
              ),
              if (Responsive.isTablet(context)) SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
