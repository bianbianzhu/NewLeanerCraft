import 'package:flutter/material.dart';
import 'package:webpagetransition/utils/extensions/hover_extension.dart';

class TextButton extends StatelessWidget {
  final String btnName;
  TextButton({this.btnName = 'Terms'});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Text(
        btnName,
        style: TextStyle(
          fontWeight: FontWeight.bold,
//          fontFamily: 'SourceSansPro',
          fontSize: 12,
          letterSpacing: .5,
          color: Colors.grey.shade700,
        ),
      ),
    ).showCursorOnHover.moveUpOnHover;
  }
}
