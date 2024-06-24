import 'package:admin_panal_shopapp/model/sidebarmodel.dart';
import 'package:flutter/material.dart';

class SideMenuData {
  final menu = [
    SideBarModel(
        icon: Icons.home,
        title: 'Dashboard',
        onTap: () {
          0;
        }),
    SideBarModel(
        icon: Icons.person,
        title: 'Orders',
        onTap: () {
          1;
        }),
    SideBarModel(
        icon: Icons.store,
        title: 'Products',
        onTap: () {
          2;
        }),
    SideBarModel(
        icon: Icons.settings,
        title: 'Settings',
        onTap: () {
          3;
        }),
    SideBarModel(
        icon: Icons.history,
        title: 'History',
        onTap: () {
          4;
        }),
    SideBarModel(
        icon: Icons.logout,
        title: 'SignOut',
        onTap: () {
          5;
        }),
  ];
}
