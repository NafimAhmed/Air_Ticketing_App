import 'package:air_ticket_app/Utils/app_info_list.dart';
import 'package:air_ticket_app/screens/hotel_screen.dart';
import 'package:air_ticket_app/screens/ticket_view.dart';
import 'package:air_ticket_app/widget/double_text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFeeedf2),
      body: ListView(

        children: [
          Padding(
            
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Container(
            child: Column(
              children: [
                Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Column(
                      children: [

                        Text("Good morning",
                          style: TextStyle(fontSize: 17,color: Colors.grey.shade500,fontWeight: FontWeight.bold)
                        ),

                        Gap(5),

                        Text("Book Tickets",
                          style: TextStyle(fontSize: 26,color: Color(0xFF3b3b3b),fontWeight: FontWeight.bold)
                        ),

                      ],
                    ),





                    Container(
                      child: Image.asset("assets/nag-air-logo.png",
                        height: 50,
                        width: 170,
                      ),
                    )


                  ],
                ),

                Gap(25),


                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white

                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    
                    Text("Search for booking")
                  ],
                )
                ),

                Gap(40),
                DoubleTextWidget(bigText: "Upcoming Flight",smallText:"View all" ,),

                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Text("Upcoming Flight",
                //     style: TextStyle(fontSize: 21,color: Color(0xFF3b3b3b),fontWeight: FontWeight.bold),
                //     ),
                //
                //
                //
                //     InkWell(
                //       onTap: (){
                //         print("You are tapped");
                //       },
                //       child : Text("View all",
                //       style: TextStyle(fontSize: 16,color: Colors.pink.shade800,fontWeight: FontWeight.w500),
                //     ),)
                //
                //
                //
                //   ],
                // )



              ],
            ),
          )),
          
          Gap(15),

          Padding(
            padding: const EdgeInsets.all(10),
              child : SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: ticketList.map((singleTicket) => TicketView(ticket: singleTicket)).toList()
                  // [
                  //   TicketView(),
                  //   Gap(10),
                  //   TicketView(),
                  //   Gap(10),
                  //   TicketView(),
                  // ],
                ),
              )
          ),

          Padding(padding: const EdgeInsets.all(15),
            child: DoubleTextWidget(bigText: "Our destination",smallText: "View all",),

            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //
            //   children: [
            //     Text("Our destination",
            //       style: TextStyle(fontSize: 21,color: Color(0xFF3b3b3b),fontWeight: FontWeight.bold),
            //     ),
            //
            //
            //
            //     InkWell(
            //       onTap: (){
            //         print("You are tapped");
            //       },
            //       child : Text("View all",
            //         style: TextStyle(fontSize: 16,color: Colors.pink.shade800,fontWeight: FontWeight.w500),
            //       ),)
            //
            //
            //
            //   ],
            // ),
          ),

          SingleChildScrollView(

            padding: EdgeInsets.only(left: 20),
            scrollDirection: Axis.horizontal,

            child: Row(
              children: hotelList.map((singlehotel) => HotelScreen(hotel: singlehotel)).toList()
              // [
              //   HotelScreen(),
              //   HotelScreen(),
              //   HotelScreen(),
              //   HotelScreen()
              // ],
            ),
          )


        ]

      ),
    );
  }
}
