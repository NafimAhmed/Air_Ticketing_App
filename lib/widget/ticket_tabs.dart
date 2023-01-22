import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Utils/app_layout.dart';

class AppTicket extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicket({Key? key, required this.firstTab, required this.secondTab}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size=AppLayout.getSize(context);
    return Container(
      padding: EdgeInsets.all(3.5),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
            width: size.width*.44,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.horizontal(left:Radius.circular(AppLayout.getHeight(50))),
              color: Colors.white,
            ),
            child: Center(child: Text(firstTab)),
          ),

          Container(
            padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
            width: size.width*.44-10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.horizontal(right:Radius.circular(AppLayout.getHeight(50))),
              color: Colors.grey.shade500,
            ),
            child: Center(child: Text(secondTab)),
          )
        ],
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.getHeight(40)),
          color: Colors.white70
      ),
    );
  }
}
