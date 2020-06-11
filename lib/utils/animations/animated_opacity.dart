import 'package:flutter/material.dart';

class AnimatedOpacityWidget extends StatefulWidget {
  final Widget child;
  final int millDuration;
  final Curve curve;
  AnimatedOpacityWidget(
      {this.child, this.millDuration = 1100, this.curve = Curves.linear});
  @override
  _AnimatedOpacityWidgetState createState() => _AnimatedOpacityWidgetState();
}

class _AnimatedOpacityWidgetState extends State<AnimatedOpacityWidget> {
  double _opacity;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _opacity = 0;
    Future.delayed(Duration(milliseconds: 5), () {
      setState(() {
        _opacity = 1;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: _opacity,
      curve: widget.curve,
      duration: Duration(milliseconds: widget.millDuration),
      child: widget.child,
    );
  }
}
