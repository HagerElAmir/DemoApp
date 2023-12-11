import 'package:demo_project/homepage.dart';
import 'package:demo_project/signup_screen.dart';
import 'package:flutter/material.dart';
//import 'signup_screen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
   Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xfff0f1f5),
       body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(18),
          height: size.height,
          width: size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 150,
                child: RichText(
                  text: const TextSpan(
                    text: 'Forsa ',
                    style: TextStyle(
                      fontSize: 32,
                      color:Color(0xff2979ff) ,
                      fontWeight: FontWeight.bold,
                    ),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' Find Your Dream House',
                            style: TextStyle(
                              color: Colors.black87,
                            )
                          )
                        ]
                  ) ),
              ),
                SizedBox(width: size.width,
                height: size.height * .3,
                child: Image.asset('assets/images/pngegg (1).png' ,width: 130, height: 130,),),

                Container(
                  height: size.height * .4,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(.2),
                        spreadRadius: 2,
                        blurRadius: 20,
                        offset: const Offset(0, 0),
                      )
                    ]

                    ),
                      child: Stack(
                        clipBehavior: Clip.none,
                         children: [
                          const Positioned(
                            top: 20,
                            left: 20,
                            child: Text('Login Here',style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),),),
                            Positioned(
                              top: 50,
                              left: 20,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      const Icon(Icons.mail_outline,color: Colors.grey,),
                                      Container(
                                        padding: const EdgeInsets.only(left: 18.0,right: 18),
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
                                    width: size.width * .8,
                                    child: const Divider(
                                      color: Colors.grey,
                                    ),
                                  )
                                ],
                              ),),
                              Positioned(
                              top: 120,
                              left: 20,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      const Icon(Icons.visibility_off,color: Colors.grey,),
                                      Container(
                                        padding: const EdgeInsets.only(left:18.0,right: 18),
                                        width: 250,
                                        child: const TextField(
                                          cursorColor: Colors.grey,
                                          obscureText: true,
                                          style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 15,
                                            letterSpacing: 1.4,
                                          ),
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: 'Password',
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: size.width * .8,
                                    child: const Divider(
                                      color: Colors.grey,
                                    ),
                                  ),
                                   SizedBox (height: 40,),
                                  GestureDetector(
                                    onTap: () {
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
                                        child: Text('Login',
                                           style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                        ),),
                                        ) ,
                                    ),
                                  ),
                                ],
                              ),),
                              Container(
                                margin:const  EdgeInsets.only(top: 180,left: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children:  [
                                    Text('Do not have account?'),
                                    GestureDetector(
                                      onTap: () => {
                                        Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=>  SignupScreen())),
                                      },
                                      child:  const Text(
                                        "SignUp",style: TextStyle(
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
            ],
          ),
        )),
    );
  }
}