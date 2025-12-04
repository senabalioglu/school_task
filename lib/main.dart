
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:schooltaskdenfinal1/screens/signin_screen.dart';
import 'package:sqflite/sql.dart';

Future<void> main() async{
  /*
  WidgetsFlutterBinding.ensureInitialized();
  var db = DatabaseConnect();
  await db.insertTodo(Todo(
    ids: 1, 
    titles: 'this is the sample todo', 
    creationDate: DateTime.now(), 
    isChecked: false));
  print(await db.getTodo());
  */
  runApp(const MyApp());
  //Get.to(AddTaskPage());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primaryColor: Color(0xFF4DD0E1)
      ),
      home: const SignInScreen(), //NoteHomePage, SignInScreen
    );
  }
}

//Firebase: build/gradle/app dan app id alıyoruz, package name kısmına yapıştırılacak.
// google services.json indirip app klasörü içine atıyoruz (konfigürasyon için)
//4. adımda önerilen sdk ları ekliyoruz
