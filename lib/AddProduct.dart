import 'dart:io';

import 'package:admin_panal_shopapp/model/colors.dart';
import 'package:admin_panal_shopapp/widgets/custom_textField.dart';
import 'package:admin_panal_shopapp/widgets/responsive.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:image_picker_web/image_picker_web.dart';

class AddProduct extends StatefulWidget {
  AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  File? _pikedImage;
  bool imageAvailable = false;
  // Uint8List webImage = Uint8List(8);
  late Uint8List imageFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            // height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // if (Responsive.isDesktop(context) || Responsive.isTablet(context))
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: Container(
                          // height: MediaQuery.of(context).size.width * 0.2,
                          // width: MediaQuery.of(context).size.width * 0.2,
                          margin: EdgeInsets.only(top: 30, bottom: 20),
                          child: Text(
                            "Add New Product",
                            style: TextStyle(
                                fontSize:
                                    Responsive.isDesktop(context) ? 30 : 20,
                                fontWeight: FontWeight.bold,
                                color: textColors),
                          ),
                        ),
                      ),
                      Container(
                        height: 60,
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: CustomTextfield(
                          labelText: 'Product Name',
                        ),
                      ),
                      Container(
                        height: 60,
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: CustomTextfield(
                          labelText: 'Barcode',
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            height: 60,
                            width: MediaQuery.of(context).size.width * 0.15,
                            child: CustomTextfield(
                              labelText: 'Buy Price',
                            ),
                          ),
                          Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width * 0.15,
                            child: CustomTextfield(
                              labelText: 'Sell Price',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            height: 60,
                            width: MediaQuery.of(context).size.width * 0.15,
                            child: CustomTextfield(
                              maxLines: 1,
                              labelText: 'Quantity',
                            ),
                          ),
                          Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width * 0.15,
                            child: CustomTextfield(
                              maxLines: 1,
                              labelText: 'Discount',
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 300,
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: CustomTextfield(
                          maxLines: 10,
                          labelText: 'Description',
                        ),
                      ),
                      // Spacer(),
                      Container(
                        height: 90,
                        width: MediaQuery.of(context).size.width * 0.3,
                        padding: const EdgeInsets.only(bottom: 50.0),
                        child: ElevatedButton(
                            onPressed: () {}, child: Text("Add Product")),
                      ),
                    ],
                  ),
                ),
                // if (Responsive.isDesktop(context) || Responsive.isTablet(context))
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () async {
                          // _pickImage();
                          final image = await ImagePickerWeb.getImageAsBytes();

                          if (image != null) {
                            setState(() {
                              imageFile = image;
                              imageAvailable = true;
                            });
                          } else {
                            setState(() {
                              imageAvailable = false;
                            });
                          }
                        },
                        child: Center(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(255, 210, 210, 210),
                            ),
                            width: MediaQuery.of(context).size.width * 0.2,
                            height: MediaQuery.of(context).size.width * 0.2,
                            child: Center(
                              child: imageAvailable
                                  ? Image.memory(imageFile, fit: BoxFit.contain)
                                  : Icon(Icons.add_a_photo, size: 35),
                              // _pikedImage == null
                              //     ? Column(
                              //         mainAxisAlignment: MainAxisAlignment.center,
                              //         children: [
                              //           Icon(Icons.add_a_photo),
                              //           Text("Upload Image"),
                              //         ],
                              //       )
                              //     : kIsWeb
                              //         ? Image.memory(webImage, fit: BoxFit.fill)
                              //         : Image.file(_pikedImage!, fit: BoxFit.fill),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                          onPressed: () async {
                            final image =
                                await ImagePickerWeb.getImageAsBytes();

                            if (image != null) {
                              setState(() {
                                imageFile = image;
                                imageAvailable = true;
                              });
                            } else {
                              setState(() {
                                imageAvailable = false;
                              });
                            }
                          },
                          child: Text("Upload Image")),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Future<void> _pickImage() async {
  //   if (kIsWeb) {
  //     final ImagePicker picker = ImagePicker();
  //     final XFile? image = await picker.pickImage(source: ImageSource.gallery);

  //     if (image != null) {
  //       var selected = File(image.path);

  //       setState(() {
  //         _pikedImage = selected;
  //       });
  //     } else {
  //       print("no image");
  //     }
  //   } else if (kIsWeb) {
  //     final ImagePicker _picker = ImagePicker();
  //     final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

  //     if (image != null) {
  //       var f = await image.readAsBytes();
  //       setState(() {
  //         webImage = f;
  //         _pikedImage = File('a');
  //       });
  //     } else {
  //       print("no image");
  //     }
  //   } else {
  //     print("something is wrong");
  //   }
  // }
}
