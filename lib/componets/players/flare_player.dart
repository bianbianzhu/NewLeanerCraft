import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

class FlarePlayer extends StatefulWidget {
  final double height;
  final double width;
  final String animationName;
  FlarePlayer({this.width = 700, this.height = 700, this.animationName});
  @override
  _FlarePlayerState createState() => _FlarePlayerState();
}

class _FlarePlayerState extends State<FlarePlayer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      alignment: Alignment.center,
      child: FlareActor(
        'animSource/${widget.animationName}.flr',
        animation: 'Animations',
        fit: BoxFit.fill,
        alignment: Alignment.center,
      ),
    );
  }
}
