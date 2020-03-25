import 'package:cinema_app_flutter/components/BottomNavigation/BottomNavigation.dart';
import 'package:cinema_app_flutter/components/Button/Button.dart';
import 'package:cinema_app_flutter/models/Movie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MovieDetailsScreen extends StatefulWidget {

  final Movie movie;

  MovieDetailsScreen({this.movie});

  @override
  State<StatefulWidget> createState() => new _MovieDetailsScreen();
}

class _MovieDetailsScreen extends State<MovieDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          // Screen body
          Container(
            width: double.infinity,
            decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(widget.movie.cover), fit: BoxFit.cover)),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.black.withOpacity(0.4),
                  Colors.transparent
                ], begin: Alignment.bottomCenter, end: Alignment.topCenter)
              ),
              child: Container(
                margin: EdgeInsets.only(bottom: 75.0),
                padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(widget.movie.name.toString(), style: TextStyle(color: Colors.white, fontSize: 22.0, fontWeight: FontWeight.bold)),
                    SizedBox(height: 10.0,),
                    Text(widget.movie.description.toString(), style: TextStyle(color: Colors.white, fontSize: 11.0, height: 2.0)),
                    SizedBox(height: 20.0),
                    Button(text: "Buy tickets"),
                  ]
                ),
              ),
            )
          ),
          // Bottom navigation
          Positioned(
            left: 0.0,
            right: 0.0,
            bottom: 0.0,
            child: BottomNavigation()
          ),
          // Custom AppBar
          Container(
            margin: EdgeInsets.only(top: 50.0),
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 35.0,
                  height: 35.0,
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Color(0xFF0C0C0C).withOpacity(0.7),
                    borderRadius: BorderRadius.all(Radius.circular(5.0))
                  ),
                  child: IconButton(icon: SvgPicture.asset("assets/icons/chevron-left-outline.svg", color: Colors.white,), onPressed: () => Navigator.pop(context))
                ),
                Container(
                  width: 35.0,
                  height: 35.0,
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Color(0xFF0C0C0C).withOpacity(0.7),
                    borderRadius: BorderRadius.all(Radius.circular(5.0))
                  ),
                  child: IconButton(icon: SvgPicture.asset("assets/icons/more-vertical-outline.svg", color: Colors.white,), onPressed: null)
                ),
              ]
            )
          )
        ]
      ),
    );
  }
}