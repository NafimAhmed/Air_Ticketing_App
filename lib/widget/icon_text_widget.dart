import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../Utils/app_layout.dart';
import '../Utils/app_style.dart';

class IconTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  const IconTextWidget({Key? key, required this.icon, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(12),horizontal: AppLayout.getWidth(12)),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.getWidth(12)),
          color: Colors.white
      ),
      child: Row(
        children: [
          Icon(
            icon,
            //Icons.flight_takeoff_rounded,
            color: Colors.pink,
          ),
          Gap(AppLayout.getWidth(10)),
          Text(text,style: Styles.textStyle,)
        ],
      ),
    );
  }
}
