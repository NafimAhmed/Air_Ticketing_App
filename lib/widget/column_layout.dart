import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../Utils/app_style.dart';

class AppColumnLayout extends StatelessWidget {

  final String firstText;
  final String SecondText;

  const AppColumnLayout({Key? key, required this.firstText, required this.SecondText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(firstText, style: Styles.headlineStyle3.copyWith(color: Colors.black),),
        Gap(5),
        Text(SecondText, style: Styles.headlineStyle3.copyWith(color: Colors.grey.shade500),),
      ],
    );
  }
}
