import 'package:flutter/material.dart';

class HouseView extends StatelessWidget {
  List<String> Location = [
    " EL Gomhoria, Assuit",
    "EL Nemas, Assuit",
    "seed street, Assuit",
  ];
  List<String> HouseName = [
    "othman tower",
    "btrol tower",
    "El cebeel block",
  ];
  List<String> HouseImage = [
    "images/images(1).jpg",
    "images/images(2).jpg",
    "images/2021_1_3_15_39_54_332.jpg",
  ];
  final HouseTextStyle = TextStyle(fontSize: 20, color: Colors.black54);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.brown,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.brown.shade300,
                              blurRadius: 5,
                              spreadRadius: 3,
                            ),
                          ]),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset("images/OIP(1).jpg"),
                      ),
                    ),
                    Positioned(
                        child: InkWell(
                          onTap: (){
                            Navigator.pop(context);
                          },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.indigo,
                          ),
                        ),
                      ),
                    ))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("5 Bed , style: House"),
                    Text("3 Bath , style: House"),
                    Text("5,202 Sqft , style: House"),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Icon(Icons.location_on, color: Colors.indigo),
                    SizedBox(width: 10),
                    Expanded(
                      flex: 2,
                      child: Text(
                        "there is a pharmacy and a supermarket around it ",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "price",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 15,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "\3000 L.E/",
                              style: TextStyle(
                                color: Colors.indigo,
                                fontWeight: FontWeight.w900,
                                fontSize: 23,
                              ),
                            ),
                            Text("Monthly"),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.indigo,
                      ),
                      child: Center(
                        child: Text(
                          "Book Now",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
