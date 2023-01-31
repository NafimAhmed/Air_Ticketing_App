
import 'package:air_ticket_app/Utils/app_layout.dart';
import 'package:air_ticket_app/screens/bottom_bar.dart';
import 'package:air_ticket_app/screens/registration_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LogInScreen extends StatelessWidget {
  //const LogInScreen({Key? key}) : super(key: key);

  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: AppLayout.getScreenHeight(),
          width: AppLayout.getScreenWidth(),

          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/window_view.jpg"),
                fit: BoxFit.cover),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [


              Text("Fly high    ",
                style: GoogleFonts.playfairDisplay(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),
                textAlign: TextAlign.start,
              ),
              Text("With Nagair",

                style: GoogleFonts.playfairDisplay(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink
                ),
                textAlign: TextAlign.end,


              ),



              Padding(
                padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
                child:TextField(
                  maxLines: 1,
                  controller: emailController,
                  decoration: InputDecoration(
                      labelText: "Email",
                      labelStyle: GoogleFonts.raleway(

                      ),
                      floatingLabelStyle: GoogleFonts.raleway(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.pink,

                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      ),
                      filled: true,
                      fillColor: Colors.white70,
                      hintText: "Email",
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Colors.white,
                              width: 1.0
                          )
                      )
                  ),
                ),),



              Padding(
                padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
                child:TextField(
                  maxLines: 1,
                  controller: passwordController,
                  decoration: InputDecoration(

                      labelStyle: GoogleFonts.raleway(

                      ),
                      floatingLabelStyle: GoogleFonts.raleway(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.pink,

                      ),
                      labelText: "Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      ),
                      filled: true,
                      fillColor: Colors.white70,
                      hintText: "Password",
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Colors.white,
                              width: 1.0
                          )
                      )
                  ),
                ),),

              Gap(10),


              ElevatedButton(
                onPressed: () {

                  Navigator.pop(context);

                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) =>
                  //             BottomBar()));

                  Get.to(BottomBar(),
                      duration: Duration(milliseconds: 500), //duration of transitions, default 1 sec
                      transition: Transition.rightToLeft );




                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                      horizontal: 60.0, vertical: 15.0),
                  primary: Colors.pink,
                  shape: StadiumBorder(),
                ),
                child: Text(
                  "Log in",
                  style: TextStyle(color: Colors.white, fontSize: 18,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),

              Gap(20),




             InkWell(
               onTap: (){

               },
               child:  Text("Forgot password ?",
                 style: GoogleFonts.raleway(
                     fontWeight: FontWeight.bold,
                     fontSize: 20,
                     color: Colors.pink
                 ),
               ),
             ),


              Gap(20),

              InkWell(
                onTap: (){


                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) =>
                  //             RegistrationScreen()));

                  Get.to(RegistrationScreen());


                },
                child:  Text("No Account ? Click here to register",
                  style: GoogleFonts.raleway(

                      fontSize: 20,
                      color: Colors.pink
                  ),
                ),
              )







            ],
          ),
        ),
      ),
    );
  }
}
