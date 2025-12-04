import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../themes/theme.dart';

class NotesScreen extends StatefulWidget {
  const NotesScreen({Key? key}) : super(key: key);

  @override
  State<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {



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
              buildTitleRow("GRADES", 3),
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
                    /*
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "25",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "MAY",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    */
                    /*
                    Container(
                      height: 100,
                      width: 1,
                      color: Colors.grey.withOpacity(
                        0.5,
                      ),
                    ),
                    */
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 28,),
                          child: Row(
                            children: [
                              Icon(
                                Icons.book,
                                color: Colors.black54,
                                size: 20,
                              ),
                              SizedBox(width: 5,),
                              Text("Math",
                                style: TextStyle(color: Colors.black, fontSize: 18),
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
                height: 3,
              ),
              Container(
                padding: EdgeInsets.all(10),
                height: 60,
                decoration: BoxDecoration(
                  color: Color(0xFF9F9FB),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    /*
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "29",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "MAY",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    */
                    /*
                    Container(
                      height: 100,
                      width: 1,
                      color: Colors.grey.withOpacity(
                        0.5,
                      ),
                    ),
                    */

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 10,),
                          child: Row(
                            children: [
                              Icon(
                                Icons.bookmark,
                                color: Colors.black54,
                                size: 20,
                              ),
                              SizedBox(width: 5,),
                              Text("65 ",
                                style: TextStyle(color: Colors.black, fontSize: 18),
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
                    /*
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "29",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "MAY",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    */
                    /*
                    Container(
                      height: 100,
                      width: 1,
                      color: Colors.grey.withOpacity(
                        0.5,
                      ),
                    ),
                    */

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 28,),
                          child: Row(
                            children: [
                              Icon(
                                Icons.book,
                                color: Colors.black54,
                                size: 20,
                              ),
                              SizedBox(width: 5,),
                              Text("Physics ",
                                style: TextStyle(color: Colors.black, fontSize: 18),
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
                height: 3,
              ),
              Container(
                padding: EdgeInsets.all(10),
                height: 60,
                decoration: BoxDecoration(
                  color: Color(0xFF9F9FB),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    /*
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "29",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "MAY",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    */
                  /*
                    Container(
                      height: 100,
                      width: 1,
                      color: Colors.grey.withOpacity(
                        0.5,
                      ),
                    ),
                    */
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 10,),
                          child: Row(
                            children: [
                              Icon(
                                Icons.bookmark,
                                color: Colors.black54,
                                size: 20,
                              ),
                              SizedBox(width: 5,),
                              Text("94 ",
                                style: TextStyle(color: Colors.black, fontSize: 18),
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
                    /*
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "29",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "MAY",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    */
                    /*
                    Container(
                      height: 100,
                      width: 1,
                      color: Colors.grey.withOpacity(
                        0.5,
                      ),
                    ),
                    */
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 28,),
                          child: Row(
                            children: [
                              Icon(
                                Icons.book,
                                color: Colors.black54,
                                size: 20,
                              ),
                              SizedBox(width: 5,),
                              Text("Programming",
                                style: TextStyle(color: Colors.black, fontSize: 18),
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
                height: 3,
              ),
              Container(
                padding: EdgeInsets.all(10),
                height: 60,
                decoration: BoxDecoration(
                  color: Color(0xFF9F9FB),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    /*
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "29",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "MAY",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    */
                  /*
                    Container(
                      height: 100,
                      width: 1,
                      color: Colors.grey.withOpacity(
                        0.5,
                      ),
                    ),
                    */
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 10,),
                          child: Row(
                            children: [
                              Icon(
                                Icons.bookmark,
                                color: Colors.black54,
                                size: 20,
                              ),
                              SizedBox(width: 5,),
                              Text("88 ",
                                style: TextStyle(color: Colors.black, fontSize: 18),
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