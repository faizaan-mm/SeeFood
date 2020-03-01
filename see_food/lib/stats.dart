import 'package:flutter/material.dart';

void main() => runApp(Stats());

class Stats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Stats Page.Go back!'),
        ),
      ),
    );
  }
}