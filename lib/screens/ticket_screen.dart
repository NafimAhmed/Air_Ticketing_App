import 'dart:io';
import 'dart:typed_data';

import 'package:air_ticket_app/Utils/app_info_list.dart';
import 'package:air_ticket_app/Utils/app_layout.dart';
import 'package:air_ticket_app/Utils/app_style.dart';
import 'package:air_ticket_app/screens/ticket_view.dart';
import 'package:air_ticket_app/widget/layout_builder_widget.dart';

//import 'mobile.dart';
//import 'package:air_ticket_app/widget/ticket_tabs.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../widget/column_layout.dart';


// class TicketScreen extends StatefulWidget{
//   const TicketScreen({Key? key}):super(key: key);
//   @override
//   State<TicketScreen> createState()=> _TicketScreenState();
//
// }




class TicketScreen extends StatelessWidget  {
  //const TicketScreen({Key? key}) : super(key: key);

    RxInt length=1.obs ;

  @override
  Widget build(BuildContext context) {

    final size=AppLayout.getSize(context);
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.pink.shade700,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Tickets", style: Styles.headlineStyle1.copyWith(color: Colors.white),),
            
            InkWell(
              onTap: (){

                // final pdf = pw.Document();
                //
                // pdf.addPage(pw.Page(
                //     pageFormat: PdfPageFormat.a4,
                //     build: (pw.Context context) {
                //       return pw.Center(
                //         child: pw.Text("Hello World"),
                //       ); // Center
                //     })); // Page






              },
              child: Icon(Icons.download),
            )

          ],
        )
      ),
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20),vertical: AppLayout.getHeight(20)),
              child:Column(
                // shrinkWrap: true,
                // padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20),vertical: AppLayout.getHeight(20)),
                children: [
                  // Gap(40),
                  // Text("Tickets", style: Styles.headlineStyle1,),
                  //Gap(20),

                  //////////////////////////////////////////////////////


                  Container(
                    width: AppLayout.getScreenWidth(),
                    child: Padding(
                      padding: EdgeInsets.all(AppLayout.getWidth(15)),
                      child: ToggleSwitch(
                        minWidth: AppLayout.getWidth(144),//144,


                        initialLabelIndex: 0,
                        cornerRadius: 20.0,
                        activeFgColor: Colors.white,
                        inactiveBgColor: Colors.grey,
                        inactiveFgColor: Colors.white,
                        totalSwitches: 2,
                        labels: ['Upcoming tickets','Previous tickets'],
                        //icons: [FontAwesomeIcons.mars, FontAwesomeIcons.venus],
                        activeBgColors: [[Colors.pink],[Colors.pink]],
                        onToggle: (index) {


                          if(index==0){
                            length.value=1 ;
                          }
                          else if(index==1){
                            length.value=3;
                          }


                          // setState((){
                          //
                          //   if(index==0){
                          //
                          //     length=1;
                          //
                          //   }
                          //   else if(index==1){
                          //     length=3;
                          //   }
                          //
                          //
                          // });
                          //print('switched to: $index');
                        },
                      ),
                    ),
                  ),




                  ///////////////////////////////////////////////



                  // AppTicket(firstTab: "Upcoming",secondTab: "Previous",),


                  ////////////////////////////////////////////////////////////////////////




                  Obx(()=>ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: length.value,
                      itemBuilder: (BuildContext context,int index){
                        return Column(
                          children: [


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
                        );
                      }))






                  ////////////////////////////////////////////////////////////////

                ],
              )

        ),
      ),
    );
  }






}
