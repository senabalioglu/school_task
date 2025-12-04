import 'package:flutter/cupertino.dart';
import 'package:schooltaskdenfinal1/note_deneme/widgetsnote/todo_card.dart';

import '../modelsnote/db_model.dart';



class TodoList extends StatelessWidget {

  final Function insertFunction;
  final Function deleteFunction;
  final db = DatabaseConnect();
  TodoList({required this.insertFunction, required this.deleteFunction, Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FutureBuilder(
        future: db.getTodo(),
        initialData: const[],
        builder: (BuildContext context, AsyncSnapshot<List> snapshot){
          var data = snapshot.data;
          var datalength = data!.length;

          return datalength == 0 ? const Center(child: Text('no data found'),) : ListView.builder(
            itemCount: datalength,
            itemBuilder: (context, i) => TodoCard(
            ids: data[i].ids, 
            titles: data[i].titles, 
            creationDate: data[i].creationDate, 
            isChecked: data[i].isChecked, 
            insertFunction: insertFunction,
            deleteFunction: deleteFunction,
          ),
            );
        }
        ),
    );
  }
}