import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  String changedText = 'GGEZ';
  String normalText = 'Good game';

  void _textHandler() {
    setState(() {
      normalText = changedText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Assignment1'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(normalText),
              RaisedButton(
                onPressed: _textHandler,
                child: Text('Press me!'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
