import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;

class Voice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Voice',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Speech(),
    );
  }
}

class Speech extends StatefulWidget {
  @override
  _SpeechState createState() => _SpeechState();
}

class _SpeechState extends State<Speech> {

  stt.SpeechToText speech;
  bool isListening = false;
  String text= 'Press the button to speak';
  double conf=1.0;

  @override
  void initState() {
    super.initState();
    speech=stt.SpeechToText();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Confidence: ${(conf*100.0).toStringAsFixed(1)}%'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(isListening ? Icons.mic : Icons.mic_none),
      ),
    );
  }
}
