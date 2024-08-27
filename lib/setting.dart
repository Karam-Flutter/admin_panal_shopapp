import 'package:admin_panal_shopapp/widgets/homeCartOrders.dart';
import 'package:flutter/material.dart';

class TabBarExample extends StatefulWidget {
  @override
  _TabBarExampleState createState() => _TabBarExampleState();
}

class _TabBarExampleState extends State<TabBarExample>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(children: [
          Text(
            'Karam Zeway',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            '0750 457 8939',
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
        ]),
        backgroundColor: Colors.transparent,
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'All Orders'),
            Tab(text: 'Completed Orders'),
            Tab(text: 'Cancelled Orders'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Section1Screen(),
          Section2Screen(),
          Section3Screen(),
        ],
      ),
    );
  }
}

class Section1Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: LiveOdersCart());
  }
}

class Section2Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: LiveOdersCart());
  }
}

class Section3Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: LiveOdersCart());
  }
}
