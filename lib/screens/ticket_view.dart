import 'package:air_ticket_app/Utils/app_layout.dart';
import 'package:air_ticket_app/Utils/app_style.dart';
import 'package:air_ticket_app/widget/thick_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class TicketView extends StatelessWidget {

  final Map<String,dynamic> ticket;
  final bool? isColor;
  const TicketView({Key? key,required this.ticket, required this.isColor}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    final size=AppLayout.getSize(context);
    return Container(
      margin: EdgeInsets.only(right: AppLayout.getHeight(10)),
        child: SizedBox(
      width: MediaQuery.of(context).size.width*.85,
      height: AppLayout.getHeight(175),
      child: Container(
        //margin: EdgeInsets.only(right: 10),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: isColor==true?Colors.blue.shade900:Colors.white,
                borderRadius:  BorderRadius.only(topLeft: Radius.circular(AppLayout.getHeight(21)),
                  topRight: Radius.circular(AppLayout.getHeight(21))
                )
              ),

              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(ticket["from"]["code"], style:  isColor==true?Styles.headlineStyle3:Styles.headlineStyle3.copyWith(color: Colors.black),),
                      Expanded(child: Container()),
                      ThickContainer(color: isColor==true?Colors.white:Colors.blue),
                      Expanded(
                          child: Stack(
                              children:[

                                SizedBox(
                                    height: AppLayout.getHeight(24),
                                    child: LayoutBuilder(
                                      builder: (BuildContext context, BoxConstraints constrains){

                                        return Flex(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          direction: Axis.horizontal,
                                          mainAxisSize: MainAxisSize.max,
                                          children: List.generate((constrains.constrainWidth()/6).floor(), (index) => SizedBox(
                                            width: 3,
                                            height: 1,
                                            child: DecoratedBox(
                                              decoration: BoxDecoration(
                                                  color: isColor==true?Colors.white:Colors.blue
                                              ),
                                            ),
                                          )
                                            /*Text("-",
                                style: GoogleFonts.openSans(
                                  color: Colors.white,
                                ),
                              )*/

                                          ),

                                        );
                                      },


                                    )
                                ),
                                Center(child: Transform.rotate(
                                  angle: 1.5,
                                  child : Icon(Icons.local_airport_rounded,color: isColor==true?Colors.white:Colors.blue,),) ,)

                              ],


                          )
                      ),





                      ThickContainer(color: isColor==true?Colors.white:Colors.blue,),
                      Expanded(child: Container()),
                      Text(ticket["to"]["code"], style:  isColor==true?Styles.headlineStyle3:Styles.headlineStyle3.copyWith(color: Colors.black),),
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(/*"New-York "*/ticket["from"]["name"],
                          style: isColor==true?Styles.headlineStyle3:Styles.headlineStyle3.copyWith(color: Colors.grey.shade500),
                        ),
                      ),
                      Text(/*"8H 30M"*/ticket["flying_time"],style: isColor==true?Styles.headlineStyle3:Styles.headlineStyle3.copyWith(color: Colors.black),),
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          /*"London"*/ticket["to"]["name"],
                          textAlign: TextAlign.end,
                          style: isColor==true?Styles.headlineStyle3:Styles.headlineStyle3.copyWith(color: Colors.grey.shade500),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // blue part of the ticket

            Container(
              color: isColor==true?Colors.red:Colors.white,

              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(

                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(

                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),

                        )
                      ),

                    ),
                  ),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: LayoutBuilder(
                        builder: (BuildContext contect, BoxConstraints constrains){

                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate((constrains.constrainWidth()/11).floor(), (index) => SizedBox(height: 1,width: 5,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                    color: Colors.white
                                ),
                              ),
                            )
                            ),
                          );

                        }

                    ),
                  )),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(

                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(

                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),

                          )
                      ),

                    ),
                  )
                ],
              ),
            ),


            //orange part 1

            Container(

              decoration: BoxDecoration(
                  color: isColor==true?Colors.red:Colors.white,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(isColor==true?21:0),
                      bottomRight: Radius.circular(isColor==true?21:0),//:Radius.circular(0),
                  )
              ),
              padding: const EdgeInsets.only(left:16,top: 10,right:16,bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(/*"May 1"*/ticket["date"],style: isColor==true?Styles.headlineStyle3:Styles.headlineStyle3.copyWith(color: Colors.black),),
                          Gap(5),
                          Text("Date",style: isColor==true?Styles.headlineStyle3:Styles.headlineStyle3.copyWith(color: Colors.grey.shade500),)
                        ],
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(/*"08:00 AM"*/ticket["deparature_time"],style: isColor==true?Styles.headlineStyle3:Styles.headlineStyle3.copyWith(color: Colors.black),),
                          Gap(5),
                          Text("Deparature time",style: isColor==true?Styles.headlineStyle3:Styles.headlineStyle3.copyWith(color: Colors.grey.shade500),)
                        ],
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(/*"23"*/ticket["number"].toString(),style: isColor==true?Styles.headlineStyle3:Styles.headlineStyle3.copyWith(color: Colors.black),),
                          Gap(5),
                          Text("Number",style: isColor==true?Styles.headlineStyle3:Styles.headlineStyle3.copyWith(color: Colors.grey.shade500),)
                        ],
                      )


                    ],
                  )
                ],
              ),


            )


          ],
        ),
      ),
    ));
  }
}
