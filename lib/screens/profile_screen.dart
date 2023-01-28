
import 'package:air_ticket_app/Utils/app_layout.dart';
import 'package:air_ticket_app/Utils/app_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widget/column_layout.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.pink.shade700,
        title: Text("Profile",style: Styles.headlineStyle2.copyWith(color: Colors.white),),
      ),
      body: SingleChildScrollView(
        child: Column(

          children: [

            Gap(AppLayout.getHeight(40)),
            // Text("profile")

            Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child:Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      height: AppLayout.getHeight(86),
                      width: AppLayout.getWidth(86),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                          image: DecorationImage(
                              image: AssetImage("assets/nag-air-logo.png")
                          )
                      ),
                    ),
                    Gap(20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Pasenger's Name",style: Styles.headlineStyle2,),
                        Text("How are you ?",style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade500
                        ),
                        ),
                        Gap(8),


                        Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(

                              borderRadius: BorderRadius.circular(15),
                              color: Colors.grey,
                            ),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  child: Icon(Icons.shield,
                                    size: 15,
                                  ),
                                  radius: 10,
                                  backgroundColor: Colors.pink,
                                ),
                                Gap(5),
                                Text("Premioum Status",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600
                                  ),
                                ),
                              ],
                            )
                        )
                      ],
                    ),
                    //Gap(20),

                    // FloatingActionButton.extended(
                    //   backgroundColor: Colors.green,
                    //   foregroundColor: Colors.black,
                    //   onPressed: () {
                    //     // Respond to button press
                    //   },
                    //   icon: Icon(Icons.edit),
                    //   label: Text('Edit'),
                    // )

                  ],
                )
            ),

            Divider(color: Colors.grey.shade500,),

            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Stack(

                children: [

                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 0,vertical: 0),
                    height: AppLayout.getHeight(90),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Styles.primaryColor,
                        borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                  Positioned(
                      right: -20,
                      top: -40,
                      child: Container(
                        padding: EdgeInsets.all(AppLayout.getHeight(30)),
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            shape: BoxShape.circle,
                            border: Border.all(width: 18,color:  Colors.indigo)
                          //borderRadius: Border.all(width: 18)
                        ),
                      )),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20),vertical: AppLayout.getHeight(20)),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            child: Icon(Icons.lightbulb,
                              color: Colors.indigo,
                            ),
                            // radius: 25,
                            maxRadius: 25,
                            //minRadius: 25,
                            backgroundColor: Colors.white,
                          ),

                          Gap(AppLayout.getWidth(12)),

                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              Text("You have got a reward",
                                style: Styles.headlineStyle2.copyWith(color: Colors.white,fontWeight: FontWeight.bold),),
                              Text("you have 10 flight in a year",
                                style: Styles.headlineStyle2.copyWith(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 16),)
                            ],
                          )


                        ],
                      )),


                ],
              ),
            ),



            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
              Container(
                  margin: EdgeInsets.fromLTRB(30, 20, 10, 20),
                  child : Text("Accumulated mile :",style: Styles.headlineStyle2,)),
            ],),

            Container(
              child: Column(
                children: [
                  Text("191283",style: TextStyle(
                      fontSize: 45,
                      color: Colors.black,
                      fontWeight: FontWeight.w600
                  ),)
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Dist. traveled",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey.shade500
                        ),
                      ),
                      Text("Destination",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey.shade500
                        ),
                      )
                    ],
                  ),
                  ListView.builder(

                    scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      physics:  BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                      itemCount: 5,
                      itemBuilder: (BuildContext context,int index){
                        return Container(
                          margin: EdgeInsets.symmetric(vertical: AppLayout.getHeight(20)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppColumnLayout(
                                firstText: "23042",
                                SecondText: "KM",
                              ),



                              AppColumnLayout(
                                firstText: "Cox's Bazar",
                                SecondText: "travel to",
                              ),
                            ],

                          ),
                        );
                      }),
                  // SingleChildScrollView(
                  //   child:
                  // )
                ],
              ),
            )




          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: Container(
        margin: EdgeInsets.fromLTRB(0, 0, 0, 21),
        child: FloatingActionButton.extended(

      onPressed: (){

      },
          label: Text("Edit"),
          hoverElevation: 100,
      icon: Icon(Icons.edit),
          splashColor: Colors.purple,

      backgroundColor: Colors.pink.shade500,
        ),
      ),



      // FloatingActionButton(
      //
      //   onPressed: (){
      //
      //   },
      //   child: Icon(Icons.edit),
      //   backgroundColor: Colors.pink.shade500,
      //
      // ),

    );
  }
}
