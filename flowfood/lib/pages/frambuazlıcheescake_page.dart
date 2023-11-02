import 'package:flutter/material.dart';


void main() {
  runApp(FrambuazliCheescakePage());
}

class FrambuazliCheescakePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Frambuazlı Cheescake'),
        ),
        body: Center(
          child: Text(
            'Frambuazlı Cheescake',
            style: TextStyle(fontSize: 20.0),
          ),
        ),
      ),
    );
  }
}
