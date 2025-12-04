import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../modelsnote/todo_model.dart';


class TodoCard extends StatefulWidget {
  final int ids;
  final String titles;
  final DateTime creationDate;
  bool isChecked;
  final Function insertFunction;
  final Function deleteFunction;
  TodoCard({ 
    required this.ids, 
    required this.titles, 
    required this.creationDate, 
    required this.isChecked, 
    required this.insertFunction, 
    required this.deleteFunction, 
    Key? key }) 
    : super(key: key);

  @override
  State<TodoCard> createState() => _TodoCardState();
} 

class _TodoCardState extends State<TodoCard> {
  @override
  Widget build(BuildContext context) {
    var anotherTodo = Todo(ids: widget.ids, titles: widget.titles, creationDate: widget.creationDate, isChecked: widget.isChecked);
    return Card(
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Checkbox( // checkbox olmaması lazım
              value: widget.isChecked, 
              onChanged: (bool? value){
                setState(() {
                  widget.isChecked = value!;
                });
                anotherTodo.isChecked = value!;
                widget.insertFunction(anotherTodo);
              },
            ),
          ),
          Expanded(child: 
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text(widget.titles,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
            ),
            const SizedBox(height: 5,),
            Text(widget.creationDate.toString(),
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xFF8F8F8F),
            ),
            ),
          ],)
          ),
          IconButton(
              onPressed: (){
                widget.deleteFunction(anotherTodo);
              },
              icon: const Icon(Icons.close,)),
        ],
      ),
    );
  }
}