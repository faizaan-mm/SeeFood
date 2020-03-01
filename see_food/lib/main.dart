import 'package:flutter/material.dart';
import 'click_picture.dart';
import 'stats.dart';

void main() => runApp(SeeFood());
String s = "230.8";

class SeeFood extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SeeFood',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
          buttonTheme: ButtonThemeData(
            buttonColor: Color(0xCC42A7D1),
            textTheme: ButtonTextTheme.primary,
          )
      ),
      home: new HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new Container(
        // Padding for the whole Container widget, padding here is a Container property
//          padding: new EdgeInsets.symmetric(vertical: 56.0, horizontal: 56.0),
        // Column widget that displays its children in a vertical array
        child: Column(
          // Center everything vertically
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /* Row one starts here! */
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new Padding(
                  padding: new EdgeInsets.all(30.0),
                  child: Image.asset('images/logo.png',
                      width: 150.0, height: 150.0, fit: BoxFit.contain),
                ),
              ],
            ),
            /* Row two starts here! */
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new Padding(
                  padding: new EdgeInsets.all(16.0),
                  child: Container(
                    padding: new EdgeInsets.all(16.0),
                    color: Color(0xCC42A7D1),
                    child: Text(
                      "Today's Caloies:"+s,
                      style: new TextStyle(
                          fontSize: 16.0, height: 1.5, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            /* Row three starts here! */
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new Padding(
                    padding: new EdgeInsets.all(16.0),
                    child: SizedBox(
                      width: 180.0,
                      child: RaisedButton.icon(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Camera()));
                        },
                        icon: Icon(
                            Icons.fastfood
                        ),
                        label: Text('Eat Now'),
                      ),
                    )
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new Padding(
                    padding: new EdgeInsets.all(16.0),
                    child:  SizedBox(
                      width: 180.0,
                      child: RaisedButton.icon(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Stats()));
                        },
                        icon: Icon(
                            Icons.graphic_eq
                        ),
                        label: Text('Check Stats'),
                      ),
                    )
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
