//import 'dart:html';

import 'package:flappy_search_bar/search_bar_style.dart';
import 'package:flutter/material.dart';
import 'package:webpagetransition/constants.dart';
import 'package:webpagetransition/utils/responsive_layout/responsive_lay_out_main.dart';
import 'package:flappy_search_bar/flappy_search_bar.dart';

//For this SearchBar, here I'm going to use flappy_search_bar: ^1.7.2 package
//automate all the logic of a Search while letting you customise a lot of things.
//the search delegate involves the appbar

//class ResponsiveSearchBar extends StatefulWidget {
//  @override
//  _ResponsiveSearchBarState createState() => _ResponsiveSearchBarState();
//}
//
//class _ResponsiveSearchBarState extends State<ResponsiveSearchBar> {
////
////  There are only 2 required arguments :
////  A Future that will be called by the Search Bar in order to do the search and which will return a List of your model
////  A callback called each time the Search Bar finds an item and asks you to return the corresponding widget
//
//  @override
//  Widget build(BuildContext context) {
//    return ResponsiveLayOut(
//      desktopVersion: SearchBarWidget(),
//      mediumVersion: SearchBarWidget(),
//      mobileVersion: SearchBarWidget(),
//    );
//  }
//}

class SearchBarWidget extends StatefulWidget {
  //this is not enough, you need to setState to trigger the rebuild of the widget tree

  @override
  _SearchBarWidgetState createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  //why this works like a setState???
  //medium to mobile - no animation -> coz the context changed??? nav_bar

  double _width = 350;
  double getWidth() {
    if (ResponsiveLayOut.isDesktopVersion(context)) {
      setState(() {
        _width = 350;
      });
    } else if (ResponsiveLayOut.isMediumVersion(context)) {
      setState(() {
        _width = 260;
      });
    } else {
      setState(() {
        _width = 260;
      });
    }
    return _width;
  }

  final List<String> courses = [
    "Advanced Diploma of Accounting",
    "Certificate IV in Accounting and Bookkeeping",
    "Diploma of Accounting",
    "Accounting Principles Skill Set",
    "Introduction to Adobe for Work",
    "Certificate IV in Ageing Support",
    "Certificate IV in Alcohol and Other Drugs",
    "Certificate III in Allied Health Assistance",
    "Certificate IV in Allied Health Assistance",
    "Master of Applied Information Technology",
    "Bachelor of Arts",
    "Master of Arts",
    "Master of Arts 1(Research)",
    "Master of Arts 2(Research)",
    "Master of Arts 3(Research)",
  ];

  final List<String> recentSearchedCourses = [
    "Accounting Principles Skill Set",
    "Introduction to Adobe for Work",
    "Certificate IV in Ageing Support",
  ];

  String inputText = '';
//  1. A Future that will be called by the Search Bar in order to do the search and which will return a List of your model

  //The following function will generate the Future - which is a list of Post

  //this is OnSearch function, use the input of the user (query in SearchDelegate) and generate A Future List of something
  Future<List<String>> search(String searchInput) async {
    await Future.delayed(
      Duration(
          seconds:
              1), //this mimic the time required to fetch data + process data
    );
    inputText = searchInput.toLowerCase();
    List<String> suggestionsList =
        //TODO: how to give a recent search result even you didn't enter anything
        searchInput.isEmpty
            ? recentSearchedCourses
            : courses
                .where(
                  (course) => course.toLowerCase().contains(
                        searchInput.toLowerCase(),
                      ),
                )
                .toList();
    //in the courses list, any course that start with (wrong!) but contain input !!!!! to Lower Case
    return suggestionsList;
  }

  List<TextSpan> _getText(String suggestion) {
    //TODO: 1st find the location of the input inside the suggestion
    int startIndex = suggestion.toLowerCase().indexOf(inputText);
    int inputLength = inputText.length;
    int endIndex = (startIndex + inputLength) - 1;
//    print('start is $startIndex');
//    print('end is $endIndex');
    //Returns the substring of this string that extends from [startIndex], inclusive, to [endIndex], exclusive.
    if (startIndex != 0) {
//      print(suggestion.substring(0, startIndex));
//      print(suggestion.substring(startIndex, endIndex + 1));
//      print(suggestion.substring(endIndex + 1));
//      print('hahaha ${(suggestion.substring(
//        suggestion.length,
//      ))}');

      return [
        TextSpan(
          text: suggestion.substring(0, startIndex),
        ),
        TextSpan(
          text: suggestion.substring(startIndex, endIndex + 1),
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        TextSpan(
          text: suggestion.substring(
            endIndex + 1,
          ),
        ),
      ];
    } else {
      return [
        TextSpan(
          text: suggestion.substring(0, endIndex + 1),
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        TextSpan(
          text: suggestion.substring(
            endIndex + 1,
          ),
        ),
      ];
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      //I didn't setState
      width: getWidth(),
      curve: Curves.bounceOut,
      duration: Duration(
        milliseconds: 500,
      ),
      height: 200,
      child: SearchBar(
        searchBarPadding: EdgeInsets.only(
          top: 0,
        ),
        //this is the margin actually
        searchBarStyle: SearchBarStyle(
          padding: EdgeInsets.symmetric(horizontal: 10),
        ),
        textStyle: TextStyle(
          fontSize: 15,
        ),
        cancellationWidget: Icon(
          Icons.close,
          color: kThemeGreen,
        ),
//        suggestions:
//            recentSearchedCourses, //Potential fist list of suggestions (when no request have been made)
        //This is like (build Suggestions' List according to the input)
        iconActiveColor: kThemeGreen,
        hintText: 'What do you want to learn?',
        onSearch: search,
        emptyWidget: ListTile(
          title: Text(
            'No result found.',
            style: TextStyle(color: Colors.black54),
          ),
        ),
        onItemFound: (String suggestion, int index) {
          //implement the onItemFound callback in order to return the Widget corresponding to one item of the list.
          //This is when you have the List, build that into a ListView (for each of the item in the list)
          //use the index + add a onTap to the ListTile to do forward things
          return Container(
            decoration: BoxDecoration(
              color: index % 2 != 0 ? Colors.grey.shade100 : Colors.white,
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey.withOpacity(.2),
                  width: 1,
                ),
                left: BorderSide(
                  color: Colors.grey.withOpacity(.2),
                  width: 1,
                ),
                right: BorderSide(
                  color: Colors.grey.withOpacity(.2),
                  width: 1,
                ),
              ),
            ),
            child: ListTile(
              title: RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 15, color: Colors.black54),
                  children: _getText(suggestion),
                ),
              ),
            ),
          );
        },
        minimumChars: 2,
      ),
    );
  }
}
