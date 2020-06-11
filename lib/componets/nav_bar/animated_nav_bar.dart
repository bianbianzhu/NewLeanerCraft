import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

//For
class MenuItem {
  final String name; // the animation flr file in animSource
  final Color color; // active menu item color
  final double x; //alignment on the x-axis

  MenuItem({this.name, this.color, this.x});
}

class AnimatedNavBar extends StatefulWidget {
  @override
  _AnimatedNavBarState createState() => _AnimatedNavBarState();
}

class _AnimatedNavBarState extends State<AnimatedNavBar> {
  List<MenuItem> items = [
    MenuItem(x: -1.0, name: 'Hometrim', color: Colors.greenAccent),
    MenuItem(
      x: 0.0,
      name: 'Usertrim',
      color: Colors.yellowAccent,
    ),
    MenuItem(
      x: 1.0,
      name: 'Favtrim',
      color: Colors.redAccent,
    ),
  ];

  MenuItem activeItem; //create a instance in fact

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    activeItem = items[0]; // the initial active item is the 1st item
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 400,
      color: Colors.black,
      child: Stack(
        children: <Widget>[
          AnimatedContainer(
            //********1st part is the big animated container in which the nav_bar indicator (a colorful small container will move to different location to indicate this one option is now active - use alignment to play the trick -
            duration: Duration(milliseconds: 200),
            alignment: Alignment(activeItem.x, -1),
            //Alignment.topLeft is Alignment(-1.0, -1.0)
            //Alignment.topCenter is Alignment(0.0, -1.0)
            //Alignment.topRight is Alignment(1.0, -1.0)
            //Alignment.centerLeft is Alignment(-1.0, 0.0)
            //Alignment.center is Alignment(0.0, 0.0)
            //Alignment.centerRight is Alignment(1.0, 0.0)
            //Alignment.bottomLeft is Alignment(-1.0, 1.0)
            //Alignment.bottomCenter is Alignment(0.0, 1.0)
            //Alignment.bottomRight is Alignment(1.0, 1.0)
            //************** the setState will be - change the activeItem - everytime it changes , the color, name, x will change and trigger rebuild
            child: AnimatedContainer(
              duration: Duration(milliseconds: 1000),
              height: 8,
              width: 400 / 3,
              color: activeItem.color,
            ),
          ),
//          Container(
//            child: Row(
//              mainAxisAlignment: MainAxisAlignment.spaceAround,
//              crossAxisAlignment: CrossAxisAlignment.end,
//              children: items.map((item) => _flare(item)).toList(),
//            ),
//          ),
          Container(
            child: AspectRatio(
              aspectRatio: 1,
              child: FlareActor(
                'animSource/Favorite.flr',
                animation: 'Favourite_star',
                alignment: Alignment.center,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }

//  Widget _flare(MenuItem item) {
//    return GestureDetector(
//      child: AspectRatio(
//        aspectRatio: 1,
//        child: Padding(
//          padding: const EdgeInsets.only(top: 20.0),
//          child: FlareActor(
//            'animSource/${item.name}',
//            alignment: Alignment.center,
//            fit: BoxFit.fill,
//            animation: getAnimationName(item),
//          ),
//        ),
//      ),
//      onTap: () {
//        setState(() {
//          activeItem = item;
//        });
//      },
//    );
//  }

  String getAnimationName(MenuItem item) {
    if (item.name == 'Favtrim') {
      return 'Fav_trim';
    } else if (item.name == 'Hometrim') {
      return 'Home_trim';
    } else {
      return 'User_trim';
    }
  }
}
