import 'package:air_ticket_app/Utils/app_info_list.dart';
import 'package:air_ticket_app/Utils/app_layout.dart';
import 'package:air_ticket_app/Utils/app_style.dart';
import 'package:air_ticket_app/screens/ticket_view.dart';
import 'package:air_ticket_app/widget/layout_builder_widget.dart';
import 'package:air_ticket_app/widget/ticket_tabs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widget/column_layout.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size=AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Stack(
          children:[
        ListView(
          padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20),vertical: AppLayout.getHeight(20)),
        children: [
          Gap(40),
          Text("Tickets", style: Styles.headlineStyle1,),
          Gap(20),
          AppTicket(firstTab: "Upcoming",secondTab: "Previous",),
          Gap(20),
          Container(
            padding: EdgeInsets.only(left: AppLayout.getWidth(15)),
            child: TicketView(ticket: ticketList[0],isColor: false,),
          ),

          SizedBox(height: 1,),

          Container(
           // width: size.width,
            margin: EdgeInsets.only(left: AppLayout.getWidth(15),right: AppLayout.getWidth(10)),
            decoration: BoxDecoration(
              color: Colors.white
            ),
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20),vertical: AppLayout.getHeight(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(
                      firstText: "Passenger Name",
                      SecondText: "Passenger",
                    ),
                    AppColumnLayout(
                      firstText: "5221 365869",
                      SecondText: "Passport/NID",
                    )
                    // Column(
                    //   crossAxisAlignment: CrossAxisAlignment.start,
                    //   children: [
                    //     Text("Passenger name", style: Styles.headlineStyle3.copyWith(color: Colors.black),),
                    //     Gap(5),
                    //     Text("Passenger", style: Styles.headlineStyle3.copyWith(color: Colors.grey.shade500),),
                    //   ],
                    // )
                  ],
                ),
                const AppLayoutBuilder(Section: 15)
              ],
            ),
          )

        ],
      )
      ]
      ),
    );
  }
}
