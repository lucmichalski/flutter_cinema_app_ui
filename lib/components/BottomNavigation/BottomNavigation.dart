import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigation extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new _BottomNavigation();
}

class _BottomNavigation extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF0C0C0C),
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0))
      ),
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          navIconButton(icon: "assets/icons/home-outline.svg", label: "Home", actionPress: () => print("Home screen")),
          navIconButton(icon: "assets/icons/bookmark-outline.svg", label: "List", actionPress: () => print("Book Mark screen")),
          navIconButton(icon: "assets/icons/archive-outline.svg", label: "Archives", actionPress: () => print("Archives screen")),
          navIconButton(icon: "assets/icons/person-outline.svg", label: "Profil", actionPress: () => print("Person screen")),
        ]
      )
    );
  }

  // Get a button with custom icon in svg.
  Widget navIconButton({@required icon, @required label, Function actionPress}) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: IconButton(
        icon: SvgPicture.asset(icon, semanticsLabel: label, color: Colors.white,),
        onPressed: actionPress
      ),
    );
  }
}