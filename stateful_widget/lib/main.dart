import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomeWidget(),
    );
  }
}

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stateful Widget')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () => setState(() => {counter++}),
                child: Icon(Icons.arrow_upward)),
            Container(
              child: Text('$counter'),
              margin: EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 30.0),
            ),
            ElevatedButton(
                onPressed: () => setState(() => {counter--}),
                child: Icon(Icons.arrow_downward)),
          ],
        ),
      ),
    );
  }
}