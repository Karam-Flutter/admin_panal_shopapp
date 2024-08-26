import 'package:admin_panal_shopapp/data/data_cart.dart';

import 'package:admin_panal_shopapp/widgets/custom_cart.dart';
import 'package:admin_panal_shopapp/widgets/homeCartOrders.dart';
import 'package:admin_panal_shopapp/widgets/responsive.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;

  var healthDetails = HealthDetails();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _buildCustomTabBar(),
          Expanded(
            child: _buildTabContent(),
          ),
        ],
      ),
    );
  }

  Widget _buildCustomTabBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
      child: GridView.builder(
        itemCount: healthDetails.healthData.length,
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: healthDetails.healthData.length,
          crossAxisSpacing: Responsive.isMobile(context) ? 12 : 15,
          mainAxisSpacing: 12.0,
        ),
        itemBuilder: (context, index) => CustomCard(
          onTap: () {
            setState(() {
              _selectedIndex = index;
            });
          },
          BrderColor: _selectedIndex == index
              ? Colorscart.colors[index].withOpacity(0.5)
              : Colors.transparent,
          color: _selectedIndex == index
              ? Colorscart.colors[index].withOpacity(0.06)
              : Colors.transparent,
          child: GestureDetector(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  healthDetails.healthData[index].icon,
                  width: 30,
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, bottom: 4),
                  child: Text(
                    healthDetails.healthData[index].value,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Text(
                  maxLines: 1,
                  textAlign: TextAlign.center,
                  softWrap: true,
                  overflow: Responsive.isMobile(context)
                      ? TextOverflow.ellipsis
                      : TextOverflow.ellipsis,
                  healthDetails.healthData[index].title,
                  style: TextStyle(
                    fontSize: Responsive.isMobile(context) ? 8 : 14,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTabContent() {
    return Stack(
      children: [
        Visibility(
          visible: _selectedIndex == 0,
          child: LiveOdersCart(),
        ),
        Visibility(
          visible: _selectedIndex == 1,
          child: Container(
            alignment: Alignment.center,
            child: Text('Priparing',
                style: TextStyle(fontSize: 24, color: Colors.white)),
          ),
        ),
        Visibility(
          visible: _selectedIndex == 2,
          child: Container(
            alignment: Alignment.center,
            child: Text('Dlivered',
                style: TextStyle(fontSize: 24, color: Colors.white)),
          ),
        ),
        Visibility(
          visible: _selectedIndex == 3,
          child: Container(
            alignment: Alignment.center,
            child: Text('Completed',
                style: TextStyle(fontSize: 24, color: Colors.white)),
          ),
        ),
        Visibility(
          visible: _selectedIndex == 4,
          child: Container(
            alignment: Alignment.center,
            child: Text('Cancelled',
                style: TextStyle(fontSize: 24, color: Colors.white)),
          ),
        ),
      ],
    );
  }
}
