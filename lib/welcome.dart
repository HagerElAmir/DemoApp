import 'package:demo_project/home.dart';
import 'package:demo_project/signup_screen.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,

        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff304ffe),
              Color(0xff2979ff),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomRight,
            stops: [0.0, 1.0],
            tileMode:TileMode.clamp
          )
        ),
        child:Center(
          child: Stack(
            children: [
              Positioned(
                bottom: 350,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    Image.asset('assets/images/Frame.png',width: 130,), 
                    const Text('Forsa', style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),)
                  ],
                ),),

                Positioned(
                  bottom: 100,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder:(context)=>  const Home()));
                      },
                      child: Container(
                        height: 50,
                        decoration:const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(30)),  
                        ),
                        child: const Center(
                          child: Text('Get Started', style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),),
                        ),
                      ),
                    ),

                  ))
            ],
          ),
        )

        
      )
      );
   
  }
}