import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppLayoutBuilder extends StatelessWidget {

  final bool? isColor;
  final int Section;
  final double width;

  const AppLayoutBuilder({Key? key, this.isColor, required this.Section, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext contect, BoxConstraints constrains){

          return Flex(
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate((constrains.constrainWidth()/Section).floor(), (index) => SizedBox(height: 1,width: 5,
              child: DecoratedBox(
                decoration: BoxDecoration(
                    color: Colors.black
                ),
              ),
            )
            ),
          );

        }

    );
  }
}
