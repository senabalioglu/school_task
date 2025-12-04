
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:schooltaskdenfinal1/screens/home_screen.dart';
import '../reusable_widgets/reusable_widget.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
        child: SingleChildScrollView(
          child: Padding( //Alt öğesini ekleyen bir pencere öğesi oluşturur.
            padding: EdgeInsets.fromLTRB( //Soldan, üstten, sağdan ve alttan ekler oluşturur.
                20, MediaQuery.of(context).size.height * 0.2, 20, 0),
            child: Column(
              children: <Widget>[
                logoWidget('assets/images/school_task.png'),
                SizedBox(
                  child: Padding(padding: EdgeInsets.only(left: 161,top: 200, right: 30, bottom: 10)),
                  height: 30,
                ),
                GestureDetector(//Hareketleri algılayan bir pencere öğesi oluşturur.
                  onTap: () {//bunun gibi
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: Container(
                    padding: const EdgeInsets.only(left: 153,top: 23, right: 30, bottom: 10),
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white54.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              "GIRIS",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
