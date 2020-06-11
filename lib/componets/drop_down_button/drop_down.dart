import 'package:flutter/material.dart';
import 'package:webpagetransition/utils/extensions/hover_extension.dart';

class DropDownComp extends StatefulWidget {
  @override
  _DropDownCompState createState() => _DropDownCompState();
}

class _DropDownCompState extends State<DropDownComp> {
  List _dropDownItems = [
    {'title': 'Browse', 'index': 0},
    {'title': 'Liked', 'index': 1},
    {'title': 'Trend', 'index': 2},
  ];

  int selectedIndex = 0;

  List<DropdownMenuItem> getItems() {
    return _dropDownItems
        .map(
          (item) => DropdownMenuItem(
            child: Center(
              child: Text(
                item['title'],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontFamily: 'SourceSansPro',
                ),
              ),
            ),
            value: item['index'],
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 120,
      child: DropdownButton(
        icon: Icon(
          Icons.keyboard_arrow_down,
          color: Colors.grey.shade500,
          size: 18,
        ),
        underline: SizedBox(
          height: 0,
          width: 0,
        ),
        hint: Padding(
          padding: EdgeInsets.only(bottom: 4.0, right: 4),
          child: Text(
            _dropDownItems[selectedIndex]['title'],
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade700,
              fontFamily: 'SourceSansPro',
              letterSpacing: 0.2,
            ),
          ),
        ),
        items: getItems(),
        onChanged: (_value) {
          setState(() {
            selectedIndex = _value;
            print(selectedIndex);
          });
        },
      ).showCursorOnHover,
    );
  }
}
