
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:schooltaskdenfinal1/screens/projects_screen.dart';
import 'package:schooltaskdenfinal1/screens/signin_screen.dart';
import '../classfile/classes_screen.dart';
import '../note_deneme/notescreens/note_home_page.dart';
import 'add_task_bar.dart';
import 'notes_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double _drawerIconSize = 30;

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
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            GestureDetector( //hareket algılıyor
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AddTaskPage()));
              },
              child: Container(
                padding: const EdgeInsets.only(left: 112,top: 23, right: 30, bottom: 10),
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white54.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(10), // sınır yarıçapı(yuvarlatmak için kullanıldı)
                ),
                child: Row(// Container içeriğini oluşturmak için
                  children: [
                    Column(
                      children: [ // içeriğin içeriğini oluşturmak için
                        Text(
                          "ÖDEV VE PROJELERİM",
                          textAlign: TextAlign.center, //text yerini ortalıyor
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            GestureDetector(//Hareketleri algılayan bir pencere öğesi oluşturur.
              onTap: () {//bunun gibi
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>AddClass()));//MainPage, ProjectsScreen, AddClass
              },
              child: Container(
                padding: const EdgeInsets.only(left: 124,top: 23, right: 30, bottom: 10),
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white54.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          "DERS PROGRAMIM",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NoteHomePage()));// AddNotes fln olcak, olmayacak :((, NotesScreen, AddTaskPage, NoteHomePage
              },
              child: Container(
                padding: const EdgeInsets.only(left: 161,top: 23, right: 30, bottom: 10),
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white54.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          "NOTLARIM",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProjectsScreen()));//ProjectsScreen ama düzenlenmiş, ProjectsScreen, AddTaskPage
              },
              child: Container(
                padding: const EdgeInsets.only(left: 161,top: 23, right: 30, bottom: 10),
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white54.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          "DERSLERİM",
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
      appBar: AppBar(
        backgroundColor: Color(0xFF4DD0E1),
        title: Text(
          "Hoş Geldin!",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.white),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomLeft,
            colors: <Color>[Color(0xFF9FA8DA)],
          )),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(
              top: 16,
              right: 16,
            ),
            child: Stack(
              children: <Widget>[
                Icon(Icons.notifications),
                Positioned(
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    constraints: BoxConstraints(
                      minWidth: 12,
                      minHeight: 12,
                    ),
                    child: Text(
                      '5',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 8,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
      drawer: Drawer(//Bir malzeme tasarım çekmecesi oluşturur.
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(//pozisyon glb
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [
                0.0,
                0.9
              ],
                  colors: [
                Theme.of(context).primaryColor.withOpacity(0.2),
                Theme.of(context).colorScheme.secondary.withOpacity(0.5),
              ])),
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0.0, 0.9],
                      colors: [
                        Theme.of(context).primaryColor,
                        Theme.of(context).colorScheme.secondary,
                      ],
                    )),
                child: Container(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "School Task",
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
             /* ListTile( //Liste başlığı oluşturur(side bar'da var)
                leading: Icon(
                  Icons.person,
                  size: _drawerIconSize,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                title: Text(
                  "Profil",
                  style: TextStyle(
                      fontSize: 20,
                      color: Theme.of(context).colorScheme.secondary),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfileScreen()));
                },
              ),*/
              ListTile(
                leading: Icon(
                  Icons.screen_lock_landscape_rounded,
                  size: _drawerIconSize,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                title: Text(
                  "Giriş Ekranı",
                  style: TextStyle(
                      fontSize: 20,
                      color: Theme.of(context).colorScheme.secondary),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignInScreen()));
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.share,
                  size: _drawerIconSize,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                title: Text(
                  "Paylaş",
                  style: TextStyle(
                      fontSize: 20,
                      color: Theme.of(context).colorScheme.secondary),
                ),
                onTap: () {
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                  size: _drawerIconSize,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                title: Text(
                  "Ayarlar",
                  style: TextStyle(
                      fontSize: 20,
                      color: Theme.of(context).colorScheme.secondary),
                ),
                onTap: () {
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
