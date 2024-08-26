import 'package:admin_panal_shopapp/data/data_cart.dart';
import 'package:admin_panal_shopapp/widgets/custom_cart.dart';
import 'package:admin_panal_shopapp/widgets/responsive.dart';

import 'package:flutter/material.dart';

class ActivityDetailsCard extends StatelessWidget {
  ActivityDetailsCard({super.key, required this.onTap, required this.index});
  final Function() onTap;
  int index;

  @override
  Widget build(BuildContext context) {
    final healthDetails = HealthDetails();

    return
     GridView.builder(
      itemCount: healthDetails.healthData.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: healthDetails.healthData.length,
        crossAxisSpacing: Responsive.isMobile(context) ? 12 : 15,
        mainAxisSpacing: 12.0,
      ),
      itemBuilder: (context, index) => CustomCard(
        onTap: onTap,
        color: Colorscart.colors[index].withOpacity(0.04),
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
    );
  }
}
