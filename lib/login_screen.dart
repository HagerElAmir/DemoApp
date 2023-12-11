/*import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => InitState(); 
    

}
class InitState extends State<LoginScreen> {
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
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(90)),
              color: Color(0xff2979ff),
               gradient: LinearGradient(
                colors: [(new Color(0xff2979ff)), (new Color(0xff2979ff))],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment:CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only( top: 50),
                    child: Image.asset("assets/images/Frame.png") ,
                    height: 90,
                    width: 90,
                   ),
                   Container(
                    margin: EdgeInsets.only(right: 20, top: 20),
                    alignment: Alignment.bottomRight,
                    child: Text(
                      "Forsa",
                      style: TextStyle(
                        fontSize:30,
                        color: Colors.white,
                      ),
                    )
                   ),
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: TextField(
              cursorColor: Color(0xff2979ff),
              decoration: InputDecoration(
                icon: Icon(
                  Icons.email,
                  color: Color(0xff2979ff),
                ),
              ),
            ),
          ),
        ]
        ),
    ),
  );
 }
}*/
