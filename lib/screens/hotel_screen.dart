
import 'package:air_ticket_app/Utils/app_layout.dart';
import 'package:air_ticket_app/Utils/app_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelScreen extends StatelessWidget {

  final Map<String ,dynamic> hotel;

  final Color color;

  const HotelScreen({Key? key, required this.hotel, required this.color}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    final size =AppLayout.getSize(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 17),
      width: size.width*0.6,
      height: AppLayout.getHeight(300),
      margin: EdgeInsets.only(right: 17,top: 5),
      decoration: BoxDecoration(
        color: color,//Colors.pink.shade700,
            borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.pink.shade200,
            blurRadius: 2,
            spreadRadius: 1
          )
        ]

      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayout.getHeight(180),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.blue.shade900,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(hotel["image"])
              )
            ),
          ),
          const Gap(10),
          Text(hotel["place"],
          style: TextStyle(fontSize: 21,color: Colors.white,fontWeight: FontWeight.bold),
          ),

          Text(hotel["destination"],
            style: Styles.headlineStyle3//TextStyle(fontSize: 21,color: Colors.white,fontWeight: FontWeight.bold),
          ),

          Gap(8),


        ],
      ),


    );
  }
}
