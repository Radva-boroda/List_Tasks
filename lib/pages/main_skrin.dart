import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  void _menuOpen(){
    Navigator.of(context as BuildContext).push(
        MaterialPageRoute(builder:(BuildContext context) {
          return Scaffold(
            appBar: AppBar(title: Text('Menu'),),
            body: Row(
              children: [
                ElevatedButton(onPressed: (){
                  Navigator.pop(context);
                  Navigator.pushNamedAndRemoveUntil(context,'/', (route) => false);
          },
                child: Text('NA golovny') ),
                Padding(padding: EdgeInsets.only(left: 15)),
                Text('Nashe proste Meny')
              ],
            )
          );
        })
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Text('Notes'),
          centerTitle: true,
          actions: [
            IconButton(onPressed: _menuOpen, icon: Icon(Icons.menu_outlined))
          ],
        ),
        body: Column(
          children: [
            Text('Main Screen',style: TextStyle(color:Colors.white),),
            ElevatedButton(onPressed:(){
              Navigator.pushReplacementNamed(context, '/todo');
            }, child: Text('Перейти далі'))
          ],
        )
    );
  }
}
