
import 'package:air_ticket_app/screens/bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class LogInScreen extends StatelessWidget {
  //const LogInScreen({Key? key}) : super(key: key);

  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

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

                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            BottomBar()));


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






          ],
        ),
      ),
    );
  }
}
