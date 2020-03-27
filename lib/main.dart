import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Font',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Custom Fonts - Google - Fontawesome'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
                color: Colors.green[900],
                iconSize: 80,
                // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                icon: FaIcon(FontAwesomeIcons.plus),
                onPressed: () {
                  print("Pressed");
                }),
            Text(
              'Custom Font',
              style: GoogleFonts.bungeeShade(
                  fontWeight: FontWeight.normal, fontSize: 48.0),
            ),
            IconButton(
                color: Colors.amber,
                iconSize: 80,
                // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                icon: FaIcon(FontAwesomeIcons.minus),
                onPressed: () {
                  print("Pressed");
                })
          ],
        ),
      ),
    );
  }
}
