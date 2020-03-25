import 'package:cinema_app_flutter/models/Movie.dart';
import 'package:cinema_app_flutter/screens/MovieDetailsScreen/MovieDetailsScreen.dart';
import 'package:flutter/material.dart';

class MovieCard extends StatefulWidget {

  final Movie movie;

  MovieCard({@required this.movie});

  @override
  State<StatefulWidget> createState() => new _MovieCard();
}

class _MovieCard extends State<MovieCard> {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: widget.movie.name,
      child: Material(
        color: Colors.transparent,
        child: Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(horizontal: 5.0),
          decoration: BoxDecoration(
            color: Color(0xFF0C0C0C),
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            image: DecorationImage(
              image: NetworkImage(widget.movie.cover), 
              fit: BoxFit.cover
            ),
          ),
          child: InkWell(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => MovieDetailsScreen(movie: widget.movie))),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 23.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                gradient: LinearGradient(colors: [
                  Colors.black.withOpacity(0.5),
                  Colors.transparent
                ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(widget.movie.name, style: TextStyle(fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold),),
                  SizedBox(height: 10.0,),
                  Text(widget.movie.shortDescription, style: TextStyle(fontSize: 11.0, color: Colors.white, fontWeight: FontWeight.w300, height: 2.0),)
                ],
              ),
            ),
          )
        )
      )
    );
  }
}