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
    Movie(cover: "https://wallpapercave.com/wp/wp3210978.jpg", name: "Spider-Man", shortDescription: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged."),
    Movie(cover: "https://wallpapercave.com/wp/wp4401897.jpg", name: "Toy Story", shortDescription: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged."),
    Movie(cover: "https://wallpapercave.com/wp/wp2615444.jpg", name: "Ant-Man", shortDescription: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged."),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65.0),
        child: Container(
          margin: EdgeInsets.only(top: 50.0),
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 35.0,
                height: 35.0,
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Color(0xFF0C0C0C),
                  borderRadius: BorderRadius.all(Radius.circular(5.0))
                ),
                child: IconButton(icon: SvgPicture.asset("assets/icons/bell-outline.svg", color: Colors.white,), onPressed: null)
              ),
              Text('Home', style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold)),
              Container(
                width: 35.0,
                height: 35.0,
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Color(0xFF0C0C0C),
                  borderRadius: BorderRadius.all(Radius.circular(5.0))
                ),
                child: IconButton(icon: SvgPicture.asset("assets/icons/settings-outline.svg", color: Colors.white,), onPressed: null)
              ),
            ]
          )
        ),
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