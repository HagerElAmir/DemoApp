import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:demo_project/houses_widget.dart';
//import 'package:circle_nav_bar/circle_nav_bar.dart';

class Locations extends StatelessWidget {
  List<String> PropertyType = [" Home"];
  List<Icon> propertyIcons = [
    Icon(Icons.house_rounded, size: 40, color: Colors.lightBlue.shade400),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor:   const Color(0xFFF7F6FB),
        body: Padding(
          padding:  const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Location",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black54,
                        ),
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.redAccent,
                          ),
                          Text(
                            "Assuit",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.notifications_active,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                      label: Text("Search"),
                      suffixIcon: Container(
                        margin: EdgeInsets.all(7),
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.indigo,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.filter_list_sharp,
                            color: Colors.white,
                          ),
                        ),
                      )),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Find properties",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(height: 20),
              Flexible(
                  child: GridView.builder(
                shrinkWrap: true,
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 1.9),
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(7),
                    height: 50,
                    width: MediaQuery.of(context).size.width / 2 - 20,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      (propertyIcons[index]),
                    
                    SizedBox(width: 5),

                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                          Text(PropertyType[index],
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 16,


                          ),
                          ),
                          Text("123 items",
                          style:TextStyle(
                      color: Colors.black54,

                          ),
                          ),

                        ] 
                      
                      ),
                    //  SizeBox(width: 30),
                    SizedBox(width: 30),
              

                    ],
                  ), 
                

                  );
                },
              ),
              ),
              SizedBox(height: 10),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Nearby to you",
                  style: Theme.of(context).textTheme.titleLarge,

                ),
                TextButton(
                  onPressed: (){}, 
                  child: Text("See all"),)


              ],
              ),
              SizedBox(height: 10),
              HousesWidget(),
            ],
          ),
        ),
        bottomNavigationBar: CircleNavBar(
          onTap: null,
          height: 60,
          circleWidth: 50,
          activeIndex: 2,
          circleColor: Colors.indigo,
          color: Colors.white,
          activeIcons:[
            Icon(Icons.location_city_rounded, color: Colors.black54),
            Icon(Icons.compass_calibration, color: Colors.black54),
            Icon(Icons.bookmark, color: Colors.black54),
            Icon(Icons.mail, color: Colors.black54),
            Icon(Icons.person, color: Colors.black54),
            ],
            inactiveIcons:[
          Icon(Icons.location_city_rounded, color: Colors.black54),
            Icon(Icons.compass_calibration, color: Colors.black54),
            Icon(Icons.bookmark, color: Colors.deepPurple),
            Icon(Icons.mail, color: Colors.black54),
            Icon(Icons.person, color: Colors.black54),
            ],
        ),
      ),
    );
  }
}
