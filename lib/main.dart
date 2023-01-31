import 'package:air_ticket_app/Utils/app_layout.dart';
import 'package:air_ticket_app/screens/bottom_bar.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';


import 'screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primaryColor: Color(0xFF687daf),
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: AnimatedSplashScreen(
          duration: 3000,
          splash: Scaffold(
            body: Container(
              
              width: AppLayout.getScreenWidth(),
              height: AppLayout.getScreenHeight(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/aircraft_gif.gif",
                    height: AppLayout.getScreenHeight(),
                    width: AppLayout.getScreenWidth(),
                  ),
                ],
              ),
            ),
          ),
          nextScreen: LogInScreen(),
          splashTransition: SplashTransition.fadeTransition,
          splashIconSize: double.maxFinite,
          //pageTransitionType: PageTransitionType.scale,
          backgroundColor: Colors.black)//LogInScreen()//BottomBar(),//MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}



