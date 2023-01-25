import 'package:air_ticket_app/Utils/app_info_list.dart';
import 'package:air_ticket_app/Utils/app_layout.dart';
import 'package:air_ticket_app/Utils/app_style.dart';
import 'package:air_ticket_app/screens/ticket_view.dart';
import 'package:air_ticket_app/widget/layout_builder_widget.dart';
import 'package:air_ticket_app/widget/ticket_tabs.dart';
import 'package:barcode_widget/barcode_widget.dart';
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
           // width: size.width*.44,
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
                Gap(AppLayout.getHeight(20)),
                const AppLayoutBuilder(Section: 15,isColor: false,width: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(
                      firstText: "E-Ticket number",
                      SecondText: "E-Ticket No.",
                    ),
                    AppColumnLayout(
                      firstText: "Booking Code",
                      SecondText: "Booking Code",
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
                Gap(AppLayout.getHeight(20)),
                const AppLayoutBuilder(Section: 15,isColor: false,width: 5,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(
                      firstText: "Visa****2426",
                      SecondText: "Payment Method",
                    ),
                    AppColumnLayout(
                      firstText: "\$ 24.00",
                      SecondText: "Price",
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
                Gap(AppLayout.getHeight(20)),
                const AppLayoutBuilder(Section: 15,isColor: false,width: 5,),

                Gap(AppLayout.getHeight(20)),










              ],
            ),
          ),

          Container(

            margin: EdgeInsets.fromLTRB(15,0,10, 0),
            decoration: BoxDecoration(
              color: Colors.white,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15))
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Container(
                   padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15),vertical: AppLayout.getHeight(15)),
                    child:ClipRRect (
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
                        child: BarcodeWidget(
                          barcode: Barcode.code128(),
                          data: "Passanger number: Passenger, flight no: flight no, Passport no: Passport",
                          drawText: false,
                          color: Colors.black,
                          width: AppLayout.getWidth(240),
                          height: 70,
                        )
                    )
                )



                // AppColumnLayout(
                //   firstText: "Visa****2426",
                //   SecondText: "Payment Method",
                // ),
                // AppColumnLayout(
                //   firstText: "\$ 24.00",
                //   SecondText: "Price",
                // )
                // Column(
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //     Text("Passenger name", style: Styles.headlineStyle3.copyWith(color: Colors.black),),
                //     Gap(5),
                //     Text("Passenger", style: Styles.headlineStyle3.copyWith(color: Colors.grey.shade500),),
                //   ],
                // )
              ],
            ),),


          Gap(AppLayout.getHeight(20)),

          Container(
            padding: EdgeInsets.only(left: AppLayout.getWidth(15)),
            child: TicketView(ticket: ticketList[0],isColor: true,),
          ),

        ],
      )
      ]
      ),
    );
  }
}
