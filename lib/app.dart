import 'package:flutter/material.dart';
import 'hello.dart';



class App extends StatelessWidget {
  // Root to application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: 'Test project',
      theme: ThemeData(
        
        primarySwatch: Colors.purple,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),


      home: MyHomePage(title: 'Random Colors'),
    );
  }
}