import 'package:flutter/material.dart';
import 'package:voice/voice.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Voice'),
        ),
        body: Center(
          child: TextButton(

            child: Text('Voice', style: TextStyle(fontSize: 20.0),),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => Voice(),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
