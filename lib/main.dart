import 'package:admin_panal_shopapp/AddProduct.dart';
import 'package:admin_panal_shopapp/ProductPage.dart';
import 'package:admin_panal_shopapp/dashboardPage.dart';

import 'package:admin_panal_shopapp/homePage.dart';

import 'package:admin_panal_shopapp/model/colors.dart';
import 'package:admin_panal_shopapp/widgets/responsive.dart';
import 'package:admin_panal_shopapp/widgets/topbar.dart';

import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:sidebarx/sidebarx.dart';

void main() {
  runApp(SidebarXExampleApp());
}

class SidebarXExampleApp extends StatefulWidget {
  SidebarXExampleApp({Key? key}) : super(key: key);

  @override
  State<SidebarXExampleApp> createState() => _SidebarXExampleAppState();
}

class _SidebarXExampleAppState extends State<SidebarXExampleApp> {
  final _controller = SidebarXController(selectedIndex: 0, extended: true);

  final _key = GlobalKey<ScaffoldState>();
  bool isSearchClicked = false;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Shop App Admin',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primaryColor,
        canvasColor: canvasColor,
        scaffoldBackgroundColor: scaffoldBackgroundColor,
        textTheme: const TextTheme(
          headlineSmall: TextStyle(
            color: Colors.white,
            fontSize: 46,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      home:
          //  HomePage()
          // CustomTabBarExample()

          Builder(
        builder: (context) {
          final isSmallScreen = MediaQuery.of(context).size.width < 600;
          return Scaffold(
            key: _key,
            appBar: isSmallScreen
                ? AppBar(
                    backgroundColor: canvasColor,
                    title: isSearchClicked
                        ? Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                            height: 40,
                            child: TextField(
                              autofocus: true,
                              cursorColor: textColors,
                              style: const TextStyle(color: textColors),
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: cardBackgroundColor,
                                  enabledBorder: const OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: accentCanvasColor),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                      borderSide: BorderSide())),
                            ),
                          )
                        : const Text('Shop App Admin',
                            style: TextStyle(color: textColors)),
                    actions: [
                      IconButton(
                        onPressed: () {
                          isSearchClicked = !isSearchClicked;
                          setState(() {});
                        },
                        icon: isSearchClicked
                            ? const Icon(
                                Icons.close,
                                color: textColors,
                              )
                            : const Icon(
                                Icons.search,
                                color: textColors,
                              ),
                      ),
                    ],
                    leading: IconButton(
                      onPressed: () {
                        // if (!Platform.isAndroid && !Platform.isIOS) {
                        //   _controller.setExtended(true);
                        // }
                        _key.currentState?.openDrawer();
                      },
                      icon: const Icon(Icons.menu, color: textColors),
                    ),
                  )
                : null,
            drawer: ExampleSidebarX(controller: _controller),
            body: Row(
              children: [
                if (!isSmallScreen) ExampleSidebarX(controller: _controller),
                Expanded(
                  child: Center(
                    child: _ScreensExample(
                      controller: _controller,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class ExampleSidebarX extends StatelessWidget {
  const ExampleSidebarX({
    Key? key,
    required SidebarXController controller,
  })  : _controller = controller,
        super(key: key);

  final SidebarXController _controller;

  @override
  Widget build(BuildContext context) {
    return SidebarX(
      controller: _controller,
      theme: SidebarXTheme(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: canvasColor,
          borderRadius: BorderRadius.circular(20),
        ),
        hoverColor: scaffoldBackgroundColor,
        textStyle: TextStyle(color: Colors.white.withOpacity(0.7)),
        selectedTextStyle: const TextStyle(color: Colors.white),
        hoverTextStyle: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
        itemTextPadding: const EdgeInsets.only(left: 30),
        selectedItemTextPadding: const EdgeInsets.only(left: 30),
        itemDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: canvasColor),
        ),
        selectedItemDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: actionColor.withOpacity(0.37),
          ),
          gradient: const LinearGradient(
            colors: [accentCanvasColor, canvasColor],
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.28),
              blurRadius: 30,
            )
          ],
        ),
        iconTheme: IconThemeData(
          color: Colors.white.withOpacity(0.7),
          size: 20,
        ),
        selectedIconTheme: const IconThemeData(
          color: Colors.white,
          size: 20,
        ),
      ),
      extendedTheme: const SidebarXTheme(
        width: 200,
        decoration: BoxDecoration(
          color: canvasColor,
        ),
      ),
      footerDivider: divider,
      headerBuilder: (context, extended) {
        return SizedBox(
          height: 120,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(
              extended ? Icons.person_2_sharp : Icons.person,
              color: Colors.white,
              size: 40,
            ),
          ),
        );
      },
      items: [
        SidebarXItem(
          icon: Icons.home,
          label: 'Home',
          onTap: () {
            Responsive.isMobile(context) ? Navigator.pop(context) : null;
          },
        ),
        SidebarXItem(
          icon: Icons.storefront_outlined,
          label: 'Products',
          onTap: () {
            Responsive.isMobile(context) ? Navigator.pop(context) : null;
          },
        ),
        SidebarXItem(
          icon: Icons.shopping_bag_outlined,
          label: 'Add Products',
          onTap: () {
            Responsive.isMobile(context) ? Navigator.pop(context) : null;
          },
        ),
        SidebarXItem(
          icon: Icons.favorite,
          label: 'Dashboard',
          onTap: () {
            Responsive.isMobile(context) ? Navigator.pop(context) : null;
          },
        ),
        SidebarXItem(
          icon: Icons.settings,
          // iconWidget: FlutterLogo(size: 20),
          label: 'settings',
          onTap: () {
            Responsive.isMobile(context) ? Navigator.pop(context) : null;
          },
        ),
        SidebarXItem(
          icon: Icons.logout_outlined,
          // iconWidget: FlutterLogo(size: 20),
          label: 'Logout',
          onTap: () {
            Responsive.isMobile(context) ? Navigator.pop(context) : null;
          },
        ),
      ],
    );
  }

  // void _showDisabledAlert(BuildContext context) {
  //   ScaffoldMessenger.of(context).showSnackBar(
  //     const SnackBar(
  //       content: Text(
  //         'Item disabled for selecting',
  //         style: TextStyle(color: Colors.black),
  //       ),
  //       backgroundColor: Colors.white,
  //     ),
  //   );
  // }
}

class _ScreensExample extends StatelessWidget {
  const _ScreensExample({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final SidebarXController controller;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        // final pageTitle = getTitleByIndex(controller.selectedIndex);
        switch (controller.selectedIndex) {
          case 0:
            return Homepage(
                // controller: controller,
                );
          case 1:
            return ProductPAge();
          case 2:
            return AddProduct();
          case 3:
            return DashboardScreen();
          case 3:
            return navitest();

          default:
            return Text(
              'pageTitle',
              // style: theme.textTheme.headlineSmall,
              textAlign: TextAlign.center,
            );
        }
      },
    );
  }
}

String getTitleByIndex(int index) {
  switch (index) {
    case 0:
      return 'Home';
    case 1:
      return 'Products';
    case 2:
      return 'People';
    case 3:
      return 'Dashboard';
    case 4:
      return 'Custom iconWidget';
    case 5:
      return 'Profile';
    case 6:
      return 'Settings';
    case 7:
      return 'Logout';
    default:
      return 'Not found page';
  }
}
