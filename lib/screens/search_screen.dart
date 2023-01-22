
import 'package:air_ticket_app/Utils/app_layout.dart';
import 'package:air_ticket_app/Utils/app_style.dart';
import 'package:air_ticket_app/widget/double_text_widget.dart';
import 'package:air_ticket_app/widget/icon_text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final size=AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Color(0xFFeeedf2),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20),vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text("What are \nYou Looking for ?",
          style: TextStyle(fontSize: AppLayout.getWidth(35),color: Colors.black,fontWeight: FontWeight.bold),
          ),
          Gap(AppLayout.getHeight(20)),
          /////fitbox
          Container(
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
                  child: Center(child: Text("Airline Ticket")),
                ),

                Container(
                  padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                  width: size.width*.44-10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.horizontal(right:Radius.circular(AppLayout.getHeight(50))),
                    color: Colors.grey.shade500,
                  ),
                  child: Center(child: Text("Hotel")),
                )
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getHeight(40)),
              color: Colors.white70
            ),
          ),
          /////fitbox


          Gap(AppLayout.getHeight(25)),
          const IconTextWidget(icon: Icons.flight_takeoff_rounded,text: "Deparature"),
          Gap(AppLayout.getHeight(15)),
          const IconTextWidget(icon: Icons.flight_land_rounded,text: "Arrival"),

          Gap(AppLayout.getHeight(25)),

          Container(
            padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(12),horizontal: AppLayout.getWidth(12)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getWidth(12)),
              color: Colors.pink
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Text(
                  "Find a Ticket",style: Styles.textStyle.copyWith(color: Colors.white),)
              ],
            ),
          ),

          Gap(AppLayout.getHeight(40)),
          const DoubleTextWidget(bigText: "Offers", smallText: "View all"),

          Gap(15),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(400),
                width: size.width*.42,
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15),vertical: AppLayout.getHeight(15)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      spreadRadius: 1,
                      blurRadius: 1
                    )
                  ]
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/india.jpg")
                        )
                      ),
                    ),

                    Gap(AppLayout.getHeight(12)),
                    
                    Text("20% Discount for early booking. Don't Miss the chance",
                    style: Styles.headlineStyle2,
                    )
                    
                  ],
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Container(
                      padding: EdgeInsets.all(15),
                      height: AppLayout.getHeight(174),
                      width: size.width*0.44,
                      decoration: BoxDecoration(
                        color: Colors.lightBlueAccent,
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(18))
                      ),
                      child: Column(children:[
                        Text(
                          "10% Discount\nfor survay. ",style: Styles.headlineStyle3,
                        textAlign: TextAlign.left,
                        ),
                        Gap(5),
                        Text("take the survay about your service ",style: Styles.textStyle.copyWith(color: Colors.grey.shade200,fontWeight: FontWeight.w500),textAlign: TextAlign.start,),
                      ]
                      ),
                      alignment: Alignment.center ,
                    ),
                    Gap(15),

                    Container(
                      height: AppLayout.getHeight(174),
                      width: size.width*0.44,
                      decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(AppLayout.getHeight(18))
                      ),

                      child: Text("20% Discount\nfor pre booking. ",style: Styles.headlineStyle3,),
                      alignment: Alignment.center ,
                    ),

                  ],
                ),
              )
            ],
          )

        ],
      ),
    );
  }
}
