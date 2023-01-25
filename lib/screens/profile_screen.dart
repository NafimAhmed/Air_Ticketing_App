
import 'package:air_ticket_app/Utils/app_layout.dart';
import 'package:air_ticket_app/Utils/app_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: ListView(
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
            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Stack(
              children: [

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15,vertical: 1),
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

                Row(
                  children: [

                  ],
                )

              ],
            ),
          )



        ],
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
