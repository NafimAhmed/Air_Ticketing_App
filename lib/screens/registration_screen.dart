import 'package:air_ticket_app/Utils/app_layout.dart';
import 'package:air_ticket_app/Utils/app_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class RegistrationScreen extends StatelessWidget {
  //const RegistrationScreen({Key? key}) : super(key: key);

  TextEditingController nameController=TextEditingController();
  TextEditingController phoneNumberController=TextEditingController();
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
                image: AssetImage("assets/plane_window_view.jpeg"),
                fit: BoxFit.cover),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [



              Padding(
                padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
                child:TextField(
                  maxLines: 1,
                  controller: nameController,
                  decoration: InputDecoration(

                      labelStyle: GoogleFonts.raleway(

                      ),
                      floatingLabelStyle: GoogleFonts.raleway(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.pink,

                      ),
                      labelText: "Name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      ),
                      filled: true,
                      fillColor: Colors.white70,
                      hintText: "Name",
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Colors.white,
                              width: 1.0
                          )
                      )
                  ),
                ),
              ),


              Padding(
                padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
                child:TextField(
                  maxLines: 1,
                  controller: emailController,

                  decoration: InputDecoration(

                      labelStyle: GoogleFonts.raleway(

                      ),
                      floatingLabelStyle: GoogleFonts.raleway(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.pink,

                      ),
                      labelText: "Email",
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
                  controller: phoneNumberController,
                  decoration: InputDecoration(
                      floatingLabelStyle: GoogleFonts.raleway(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.pink,

                      ),
                      labelText: "Phone number",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      ),
                      filled: true,
                      fillColor: Colors.white70,
                      hintText: "Phone Number",
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Colors.white,
                              width: 1.0
                          )
                      )
                  ),
                ),
              ),


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


              ElevatedButton(
                onPressed: () {

                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) =>
                  //             BottomBar()));


                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                      horizontal: 60.0, vertical: 15.0),
                  primary: Colors.pink,
                  shape: StadiumBorder(),
                ),
                child: Text(
                  "Register",
                  style: TextStyle(color: Colors.white, fontSize: 18,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),


            ],
          ),
        ),
      )
    );
  }
}
