import 'dart:ui';

import 'package:demo_project/homepage.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<SignupScreen> {
    @override
  Widget build(BuildContext context) {
    return initWidget();

  }

 Widget initWidget(){
   return Scaffold(
    body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(90)),
              gradient: LinearGradient(
                colors:[(new Color(0xff304ffe)),(new Color(0xff2979ff))],
                begin: Alignment.bottomCenter,
                end: Alignment.bottomCenter,
                )
            ),
            child: Center(
              child :Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 50),
                    child: Image.asset('assets/images/pngegg (1).png'),
                    height: 90,
                    width: 90,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 30,top: 20),
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "SignUp",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              )
            ),
          ),
 Positioned(
  top: 50,
  left: 20,
  child: Column(
    children: [
      Row(
        children: [
          const Icon(Icons.person, color: Colors.blue),
          Container(
            padding: const EdgeInsets.only(left: 18.0, right: 18),
            width: 250,
            child: const TextField(
              cursorColor: Colors.grey,
              style: TextStyle(
                color: Colors.black54,
                fontSize: 15,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Full Name',
              ),
            ),
          ),
        ],
      ),
      SizedBox(
        width: MediaQuery.of(context).size.width * 0.9,
        child: const Divider(
          color: Colors.grey,
        ),
      ),
    ],
  ),
),

Positioned(
  top: 50,
  left: 20,
  child: Column(
    children: [
      Row(
        children: [
          const Icon(Icons.mail_outline, color: Colors.blue),
          Container(
            padding: const EdgeInsets.only(left: 18.0, right: 18),
            width: 250,
            child: const TextField(
              cursorColor: Colors.grey,
              style: TextStyle(
                color: Colors.black54,
                fontSize: 15,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Gmail',
              ),
            ),
          ),
        ],
      ),
      SizedBox(
        width: MediaQuery.of(context).size.width * 0.9,
        child: const Divider(
          color: Colors.grey,
        ),
      ),
    ],
  ),
),
Positioned(
  top: 50,
  left: 20,
  child: Column(
    children: [
      Row(
        children: [
          const Icon(Icons.phone, color: Colors.blue),
          Container(
            padding: const EdgeInsets.only(left: 18.0, right: 18),
            width: 250,
            child: const TextField(
              cursorColor: Colors.grey,
              style: TextStyle(
                color: Colors.black54,
                fontSize: 15,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Phone',
              ),
            ),
          ),
        ],
      ),
      SizedBox(
        width: MediaQuery.of(context).size.width * 0.9,
        child: const Divider(
          color: Colors.grey,
        ),
      ),
    ],
  ),
),

Positioned(
  top: 50,
  left: 20,
  child: Column(
    children: [
      Row(
        children: [
          const Icon(Icons.visibility_off, color: Colors.blue),
          Container(
            padding: const EdgeInsets.only(left: 18.0, right: 18),
            width: 250,
            child: const TextField(
              obscureText: true,
              cursorColor: Colors.grey,
              style: TextStyle(
                color: Colors.black54,
                fontSize: 15,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'password',
              ),
            ),
          ),
        ],
      ),
      SizedBox(
        width: MediaQuery.of(context).size.width * 0.9,
        child: const Divider(
          color: Colors.grey,
        ),
      ),
    ],
  ),
),
     SizedBox (height: 40,),
                                  GestureDetector(
                                    onTap: (){
                                       Navigator.push(context,MaterialPageRoute(builder:(context)=>  HomePage()));
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      width: 120,
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(50)),
                                        gradient: LinearGradient(
                                          begin: Alignment.centerLeft,
                                          end: Alignment.centerRight,
                                          colors: [
                                            Color(0xff304ffe),
                                            Color(0xff2979ff),
                                            ]
                                        )
                                      ),
                                      child: const Padding(
                                        padding:  EdgeInsets.all(3.0),
                                        child: Text('SignUp',
                                           style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                        ),),
                                        ) ,
                                    ),
                                  ),
                                   Container(
                                margin:const  EdgeInsets.only(bottom: 200,left: 400,top: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children:  [
                                    Text('Already Member? '),
                                    GestureDetector(
                                      onTap: () => {
                                        Navigator.pop(context),
                                      },
                                      child:  const Text(
                                        "Login Now",style: TextStyle(
                                          color:  Colors.blue,
                                          fontSize: 17,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),

        ],
      ),
    ),
    
    
   );
 }


}
