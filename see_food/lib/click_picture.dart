import 'package:flutter/material.dart';

void main() => runApp(Camera());

class Camera extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Camera Page.Go back!'),
        ),
      ),
    );
  }
}