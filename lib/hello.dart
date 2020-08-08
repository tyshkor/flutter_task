import 'package:flutter/material.dart';
import 'style.dart';


import 'dart:math';
   var randomColors = <Color>[];


  Color bgcolor = const Color(0xff0567d1);
  var random = Random();


//Home page
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      backgroundColor: bgcolor,
      
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        actions: <Widget>[
            IconButton(icon: Icon(Icons.list), onPressed: ()  {
              Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context) {
              final Iterable<ListTile> tiles = randomColors.map((Color color) {
                  

              return ListTile(
        title: Text(color.toString(), style: ListTextStyle,
),
      
        );
              });

              final List<Widget> divided =
                ListTile.divideTiles(context: context, tiles: tiles).toList();

                return Scaffold(
                   appBar: AppBar(title: Text('Random colors')),
                    body: ListView(children: divided));
                  }));
            }
            ),
            //IconButton(icon: Icon(Icons.list), onPressed: _pushSaved),

          ],

      ),
      body: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () =>  setState((){
            bgcolor = Color.fromARGB(random.nextInt(1000000), random.nextInt(1000000), random.nextInt(1000000), random.nextInt(1000000));
            randomColors.add(bgcolor);
      
            }),
          child: 
      
      Center(

        child: Column(
          // color: Color.blue; 
        
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hey there',
              style: HelloTextStyle,
            ),
            
          ],
        ),
      ),
      
        ),
    );
  }
}
