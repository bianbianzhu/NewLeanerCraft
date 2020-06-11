import 'package:flutter/material.dart';
import 'package:webpagetransition/utils/extensions/hover_extension.dart';

class LanguageDropDown extends StatefulWidget {
  @override
  _LanguageDropDownState createState() => _LanguageDropDownState();
}

class _LanguageDropDownState extends State<LanguageDropDown> {
  final _dropDownItems = [
    {'Language': 'English', 'index': 0},
    {'Language': 'Chinese', 'index': 1},
    {'Language': 'Spanish', 'index': 2},
    {'Language': 'Japanese', 'index': 3},
    {'Language': 'French', 'index': 4},
    {'Language': 'Germany', 'index': 5},
    {'Language': 'Italian', 'index': 6},
  ];
  int selectedItem = 0;
  List<DropdownMenuItem> _getItems() {
    return _dropDownItems
        .map(
          (item) => DropdownMenuItem(
            child: Center(
              child: Text(
                item['Language'],
                style: TextStyle(
                  color: Color(0xff999999),
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
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
      padding: EdgeInsets.only(
        left: 8,
      ),
      height: 33,
      width: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black26, blurRadius: .2),
        ],
      ),
      child: DropdownButton(
        icon: Icon(
          Icons.keyboard_arrow_down,
          color: Colors.grey.shade500,
          size: 18,
        ),
        hint: Row(
          children: [
            Icon(
              Icons.language,
              size: 16,
              color: Color(0xff999999),
            ),
            SizedBox(
              width: 6,
            ),
            Text(
              _dropDownItems[selectedItem]['Language'],
              style: TextStyle(
                color: Color(0xff999999),
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 15,
            ),
          ],
        ),
        underline: SizedBox(
          width: 0,
          height: 0,
        ),
        items: _getItems(),
        onChanged: (_value) {
          setState(() {
            selectedItem = _value;
          });
        },
      ),
    ).showCursorOnHover;
  }
}
