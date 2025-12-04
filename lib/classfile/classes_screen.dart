
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../themes/theme.dart';

class AddClass extends StatefulWidget {
  const AddClass({Key? key}) : super(key: key);

  @override
  State<AddClass> createState() => _AddClassState();
}

class _AddClassState extends State<AddClass> {
  

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xFF4DD0E1), Color(0xFF9FA8DA)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
        ),
        
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            children: [
              
              SizedBox(
                height: 25,
              ),
              buildTitleRow("TODAY CLASSES", 2),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(10),
                height: 100,
                decoration: BoxDecoration(
                  color: Color(0xFF9F9FB),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "07:00",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "AM",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 100,
                      width: 1,
                      color: Colors.grey.withOpacity(
                        0.5,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Math",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 18,),
                          child: Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.black54,
                                size: 20,
                              ),
                              SizedBox(width: 5,),
                              Text("Room C1, Engineering and Architecture Building",
                              style: TextStyle(color: Colors.white60, fontSize: 13),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(10),
                height: 100,
                decoration: BoxDecoration(
                  color: Color(0xFF9F9FB),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "09:00",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "AM",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 100,
                      width: 1,
                      color: Colors.grey.withOpacity(
                        0.5,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Physics",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 18,),
                          child: Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.black54,
                                size: 20,
                              ),
                              SizedBox(width: 5,),
                              Text("Room C3, Engineering and Architecture Building",
                              style: TextStyle(color: Colors.white60, fontSize: 13),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

    Row buildTitleRow(String title, int number) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RichText(
          text: TextSpan(
              text: title,
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                  text: "($number)",
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.normal),
                ),
              ]),
        ),
        Text(
          "See all",
          style: TextStyle(
              fontSize: 12,
              color: Color(0XFF3E3993),
              fontWeight: FontWeight.bold),
        )
      ],
    );
  }
  
}
