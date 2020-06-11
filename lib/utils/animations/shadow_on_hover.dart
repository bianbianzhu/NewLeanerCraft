import 'package:flutter/material.dart';

class ShadowOnHover extends StatefulWidget {
  final Widget child;
  ShadowOnHover({this.child});
  @override
  _ShadowOnHoverState createState() => _ShadowOnHoverState();
}

class _ShadowOnHoverState extends State<ShadowOnHover> {
  final nonHoverShadow = BoxShadow(
    color: Colors.transparent,
  );
  final hoverShadow = BoxShadow(
    color: Colors.black12,
    blurRadius: 12,
    offset: Offset(0, 12),
  );
  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (e) => _mouseEnter(true),
      onExit: (e) => _mouseEnter(false),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        decoration: BoxDecoration(
          boxShadow: [
            _hovering ? hoverShadow : nonHoverShadow,
          ],
        ),
        child: widget.child,
      ),
    );
  }

  void _mouseEnter(bool hovering) {
    setState(() {
      _hovering = hovering;
    });
  }
}
