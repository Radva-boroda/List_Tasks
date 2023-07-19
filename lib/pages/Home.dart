
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late String _userToDo;
  List todoList = [];

  @override
  void initState() {
    super.initState();
    todoList.addAll(['Milk', 'laslf', 'pfdjf']);
  }

  @override
    Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Notes'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: todoList.length,
          itemBuilder: (BuildContext context, int index){
          return Dismissible(
              key: Key(todoList[index]),
              child: Card(
                child: ListTile(
                    title: Text(todoList[index]),
                  trailing:IconButton(
                    icon: Icon(
                      Icons.delete_sweep,
                      color: Colors.deepOrangeAccent,
                    ),
                      onPressed: () {
                      setState((){
                        todoList.removeAt(index);
                      });},
                  ),
                ),
              ),
              onDismissed: (direction){
                setState(() {
                  todoList.removeAt(index);

                });
              });
        }
        ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.greenAccent,
        onPressed: (){
          showDialog(context: context, builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Add element'),
              content: TextField(
                onChanged: (String value){
                  _userToDo = value;
                }
              ),
              actions: [
                ElevatedButton(
                    onPressed:(){
                      setState(() {
                        todoList.add(_userToDo);
                      });
                    Navigator.of(context).pop();
                      },child: Text('Dodatu'))
              ],
            );
          });
          },
        child: Icon(
          Icons.add_box,
          color: Colors.white
        ),
      ),
    );
  }
}
