import 'package:air_ticket_app/Utils/app_layout.dart';
import 'package:air_ticket_app/Utils/app_style.dart';
import 'package:air_ticket_app/widget/thick_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    final size=AppLayout.getSize(context);
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 200,
      child: Container(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.blue.shade900,
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(21),
                  topRight: Radius.circular(21)
                )
              ),

              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("NYC", style: Styles.headlineStyle3,),
                      Expanded(child: Container()),
                      ThickContainer(),
                      Expanded(
                          child: Stack(
                              children:[

                                SizedBox(
                                    height: 24,
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
                      Text("London", style: Styles.headlineStyle3,),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(""),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
