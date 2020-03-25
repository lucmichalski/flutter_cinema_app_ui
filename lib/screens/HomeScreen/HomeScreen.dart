import 'package:carousel_slider/carousel_slider.dart';
import 'package:cinema_app_flutter/components/BottomNavigation/BottomNavigation.dart';
import 'package:cinema_app_flutter/components/MovieCard/MovieCard.dart';
import 'package:cinema_app_flutter/models/Movie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  
  List movieList = [
    Movie(cover: "https://wallpapercave.com/wp/wp2615444.jpg", name: "Ant-Man", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s."),
    Movie(cover: "https://wallpapercave.com/wp/wp3210978.jpg", name: "Spider-Man", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s."),
    Movie(cover: "https://wallpapercave.com/wp/wp4401897.jpg", name: "Toy Story", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s."),
  ];

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
      body: Container(
        margin: EdgeInsets.only(top: 20.0, bottom: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(padding: EdgeInsets.symmetric(horizontal: 45.0), child: Text("Featured", style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),),),
            SizedBox(height: 15.0),
            Expanded(
              flex: 1,
              child: CarouselSlider(
                height: MediaQuery.of(context).size.height / 2 * 1.4,
                initialPage: 0,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
                items: movieList.map((item) {
                  return Builder(
                    builder: (BuildContext context) {
                      return MovieCard(movie: item);
                    },
                  );
                }).toList(),
              )
            )
          ]
        )
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}