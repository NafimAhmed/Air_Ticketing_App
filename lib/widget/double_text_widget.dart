import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DoubleTextWidget extends StatelessWidget {
  final String bigText;
  final String smallText;
  const DoubleTextWidget({Key? key, required this.bigText, required this.smallText}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(bigText,
            style: TextStyle(fontSize: 21,color: Color(0xFF3b3b3b),fontWeight: FontWeight.bold),
          ),



          InkWell(
            onTap: (){
              print("You are tapped");
            },
            child : Text(smallText,
              style: TextStyle(fontSize: 16,color: Colors.pink.shade800,fontWeight: FontWeight.w500),
            ),)



        ],
      ),
    );
  }
}
