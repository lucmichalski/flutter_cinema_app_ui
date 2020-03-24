import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/BottomNavigation/BottomNavigation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff000000),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
        elevation: 0.0,
        leading: Container(
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Color(0xFF0C0C0C),
            borderRadius: BorderRadius.all(Radius.circular(5.0))
          ),
          child: IconButton(icon: SvgPicture.asset("assets/icons/bell-outline.svg", color: Colors.white,), onPressed: null)
        ),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Color(0xFF0C0C0C),
              borderRadius: BorderRadius.all(Radius.circular(5.0))
            ),
            child: IconButton(icon: SvgPicture.asset("assets/icons/settings-outline.svg", color: Colors.white,), onPressed: null)
          ),
        ],
      ),
      body: Container(child: Text("Hello world", style: TextStyle(color: Colors.white),)),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}