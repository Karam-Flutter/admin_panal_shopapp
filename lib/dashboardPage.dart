import 'package:admin_panal_shopapp/model/colors.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final List<Map<String, String>> paymentHistory = [
    {"date": "2024-08-20", "amount": "\$100.00", "status": "Completed"},
    {"date": "2024-08-15", "amount": "\$250.00", "status": "Completed"},
    {"date": "2024-08-10", "amount": "\$75.00", "status": "Pending"},
    {"date": "2024-08-05", "amount": "\$150.00", "status": "Failed"},
    {"date": "2024-08-01", "amount": "\$300.00", "status": "Completed"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSummarySection(),
            SizedBox(height: 20),
            Text(
              'Payment History',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(height: 10),
            Expanded(child: _buildPaymentHistoryList()),
          ],
        ),
      ),
    );
  }

  Widget _buildSummarySection() {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: cardBackgroundColor,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildSummaryCard(
              'Total Balance', '\$5000.00', Icons.account_balance_wallet),
          _buildSummaryCard('Total Payments', '\$2000.00', Icons.payment),
          _buildSummaryCard('Pending Payments', '\$300.00', Icons.pending),
        ],
      ),
    );
  }

  Widget _buildSummaryCard(String title, String amount, IconData icon) {
    return Column(
      children: [
        Icon(icon, size: 40, color: Colors.white),
        SizedBox(height: 10),
        Text(
          title,
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        SizedBox(height: 5),
        Text(
          amount,
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ],
    );
  }

  Widget _buildPaymentHistoryList() {
    return ListView.builder(
      itemCount: paymentHistory.length,
      itemBuilder: (context, index) {
        final payment = paymentHistory[index];
        return Card(
          color: cardBackgroundColor,
          elevation: 3.0,
          margin: EdgeInsets.symmetric(vertical: 5.0),
          child: ListTile(
            leading: Icon(
              payment['status'] == 'Completed'
                  ? Icons.check_circle
                  : payment['status'] == 'Pending'
                      ? Icons.hourglass_empty
                      : Icons.error,
              color: payment['status'] == 'Completed'
                  ? Colors.green
                  : payment['status'] == 'Pending'
                      ? Colors.orange
                      : Colors.red,
            ),
            title: Text(
              payment['amount']!,
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            subtitle: Text(
              payment['date']!,
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white38),
            ),
            trailing: Text(
              payment['status']!,
              style: TextStyle(
                color: payment['status'] == 'Completed'
                    ? Colors.green
                    : payment['status'] == 'Pending'
                        ? Colors.orange
                        : Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );
      },
    );
  }
}
