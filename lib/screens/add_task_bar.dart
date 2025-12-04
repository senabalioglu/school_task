import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:schooltaskdenfinal1/database/database.dart';
import '../models/note_model.dart';
import 'add_note_screen.dart';

class AddTaskPage extends StatefulWidget {
  //const AddTaskPage({Key? key}) : super(key: key);

  @override
  State<AddTaskPage> createState() => _AddTaskPageState();
}

class _AddTaskPageState extends State<AddTaskPage> {

  late Future<List<Note>> _noteList;

  final DateFormat _dateFormatter = DateFormat('MMM dd, yyyy');

  DatabaseHelper _databaseHelper = DatabaseHelper.instance;

  @override
  void initState(){
    super.initState();
    _updateNoteList();
  }

  _updateNoteList(){
    _noteList = DatabaseHelper.instance.getNoteList();
  }

  Widget _buildNote(Note note){
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        children: [
          ListTile(
            title: Text(note.title!, style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
                decoration: note.status == 0
                    ? TextDecoration.none
                    : TextDecoration.lineThrough
            ),
            ),
            subtitle: Text('${_dateFormatter.format(note.date!)} - ${note.priority}', style: TextStyle(
                fontSize: 15.0,
                color: Colors.white,
                decoration: note.status == 0
                    ? TextDecoration.none
                    : TextDecoration.lineThrough
            ),),
            trailing: Checkbox(
              onChanged: (value) {
                note.status = value! ? 1 : 0;
                DatabaseHelper.instance.updateNote(note);
                _updateNoteList();
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => AddTaskPage()));
              },
              activeColor: Theme.of(context).primaryColor,
              value: note.status == 1 ? true : false,
            ),
            onTap: () => Navigator.push(context, CupertinoPageRoute(builder: (_) => AddNotePage(
              updateNoteList: _updateNoteList(),
              note: note,

            ),
            ),
            ),
          ),
          Divider(height: 5.0, color: Colors.deepPurple,),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF4DD0E1),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF9FA8DA),
        onPressed: (){
          Navigator.push(context, CupertinoPageRoute(builder: (_) => AddNotePage(
            //updateNoteList: _updateNoteList,
            updateNoteList: _updateNoteList(),

          ),));
        },
        child: Icon(Icons.add),
      ),
      body: FutureBuilder(

          future: _noteList,
          builder: (context, AsyncSnapshot snapshot){

            if(!snapshot.hasData){
              return Center(
                child: CircularProgressIndicator(),
              );
            }

            final int completedNoteCount = snapshot.data!.where((Note note) => note.status == 1).toList().length;

            return ListView.builder(
                itemCount: int.parse(snapshot.data!.length.toString())+1,
                itemBuilder: (
                    BuildContext context, int index
                    ){
                  if(index==0){
                    return Padding(padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:<Widget> [
                          Text(
                            'Projects & \nHomeworks',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            '$completedNoteCount of ${snapshot.data.length}',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                  return _buildNote(snapshot.data![index-1]);
                }
            );
          }
      ),
    );
  }
}