import 'dart:js';

import 'package:flutter/material.dart';
import 'package:notes_firebase/pages/Home.dart';
import 'package:notes_firebase/pages/main_skrin.dart';

void main() => runApp(MaterialApp(
  theme: ThemeData(
    primaryColor: Colors.deepOrangeAccent,
  ),
  initialRoute: '/',
  routes: {
    '/': (context) => MainScreen(),
    '/todo': (context)=> Home(),
  },
));
