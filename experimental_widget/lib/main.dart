import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: HomeWidget(),
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
    );
  }
}

class HomeWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Experimental Application'),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children:[
              Expanded(child: Container(
                alignment: Alignment.center,
                color: Colors.red,
                child: Text(
                  '한 놈',
                  style: TextStyle(fontSize: 100),
                  ),
                ),
                flex: 3,
              ),
              Expanded(child: Container(
                alignment: Alignment.center,
                child: Text(
                  '두 놈',
                  style: TextStyle(fontSize: 100),
                  ),
                ),
                flex: 1,
              ),
            ],
          ),
        ),
      )
    );
  }
}