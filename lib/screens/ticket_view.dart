import 'package:air_ticket_app/Utils/app_layout.dart';
import 'package:air_ticket_app/Utils/app_style.dart';
import 'package:air_ticket_app/widget/thick_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class TicketView extends StatelessWidget {

  final Map<String,dynamic> ticket;
  const TicketView({Key? key,required this.ticket}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    final size=AppLayout.getSize(context);
    return Container(
      margin: EdgeInsets.only(right: AppLayout.getHeight(10)),
        child: SizedBox(
      width: MediaQuery.of(context).size.width*.85,
      height: AppLayout.getHeight(200),
      child: Container(
        //margin: EdgeInsets.only(right: 10),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.blue.shade900,
                borderRadius:  BorderRadius.only(topLeft: Radius.circular(AppLayout.getHeight(21)),
                  topRight: Radius.circular(AppLayout.getHeight(21))
                )
              ),

              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(ticket["from"]["code"], style: Styles.headlineStyle3,),
                      Expanded(child: Container()),
                      ThickContainer(),
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
                                                  color: Colors.white
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
                                  child : Icon(Icons.local_airport_rounded,color: Colors.white,),) ,)

                              ],


                          )
                      ),





                      ThickContainer(),
                      Expanded(child: Container()),
                      Text(ticket["to"]["code"], style: Styles.headlineStyle3,),
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(/*"New-York "*/ticket["from"]["name"],
                          style: Styles.headlineStyle3,
                        ),
                      ),
                      Text(/*"8H 30M"*/ticket["flying_time"],style: Styles.headlineStyle3,),
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          /*"London"*/ticket["to"]["name"],
                          textAlign: TextAlign.end,
                          style: Styles.headlineStyle3,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // blue part of the ticket

            Container(
              color: Colors.red,

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
                  color: Colors.red,
                  borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21)
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
                          Text(/*"May 1"*/ticket["date"],style: Styles.headlineStyle3,),
                          Gap(5),
                          Text("Date",style: Styles.headlineStyle3,)
                        ],
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(/*"08:00 AM"*/ticket["deparature_time"],style: Styles.headlineStyle3,),
                          Gap(5),
                          Text("Deparature time",style: Styles.headlineStyle3,)
                        ],
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(/*"23"*/ticket["number"].toString(),style: Styles.headlineStyle3,),
                          Gap(5),
                          Text("Number",style: Styles.headlineStyle3,)
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
