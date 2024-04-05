import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    final items = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J' ];
    
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
          ), // AppBar
          body: ListView.separated(
            padding: EdgeInsets.all(10.0),
            itemCount: items.length,
            itemBuilder: (BuildContext ctx, int index){
              return Container(
                child: Text('Level ${items[index]}'), 
                height: 100,);
            },
            separatorBuilder: (BuildContext contex, int index) => const Divider(),
          ) 
      ), 
    );
  }
}