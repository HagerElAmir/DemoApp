/*import 'dart:async';
import 'package:demo_project/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => InitState();
   
  }

class InitState extends State<SplashScreen> {
  late BuildContext screenContext;

  @override
  Widget build(BuildContext context) {
    screenContext = context;
    return initWidget();
  }

  @override
  void initState() {
    super.initState();
    startTimer(screenContext);
  }

  startTimer(BuildContext context) async {
    var duration = Duration(seconds: 3);

    return Timer(duration, () {
      loginRoute(context);
    });
  }

  loginRoute(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
  }
}
   Widget initWidget(){
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: new Color(0xff304ffe),
              gradient: LinearGradient(
                colors: [(new Color(0xff304ffe)), (new Color(0xff304ffe))],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                
                )
            ),
          ),
        Center(
            child: Image.asset("assets/images/Frame.png") ,
          )
        ],
      ),
    );
  }*/

