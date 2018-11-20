import 'package:flutter/material.dart';
import 'package:expandable_card/expandable_card.dart';

void main() {

  runApp(expandablecard());

}

class expandablecard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Meme Board',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.blue[700],
        accentColor: Colors.blue[50],
      ),
      home: HomePage(),
    );
  }

}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Camp organizer'),
      ),
      body: SafeArea(
          child: Center(
              child: new ExpandableCard(),

          )
      ),
    );
  }





}
