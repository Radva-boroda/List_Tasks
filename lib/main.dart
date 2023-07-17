import 'package:flutter/material.dart';

void main() => runApp(MyApp());
// Witget -- це= зображення яке показується користовачу , кінцевий результат
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     theme: ThemeData
       (primaryColor: Colors.deepOrangeAccent),
     home:Scaffold(
       appBar: AppBar(
         title: Text('Nazic'),
       centerTitle: true,
     ),
       body: const Center(
         child:
         Text('Nazik Radvanetsky',style: TextStyle(
           fontFamily: 'GoblinOne',
           color: Colors.black,
           fontSize: 20,
         ),)
       ),
       floatingActionButton: FloatingActionButton(
         child: Text('Nazmuna mena'),
         backgroundColor: Colors.black,
         onPressed: () {  } ,
      ),
     ),
    );
  }
}
