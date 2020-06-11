import 'package:flutter/material.dart';

class MaterialSearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Icon(Icons.search),
      onPressed: () {},
    );
  }
}

//String as the generic type
//***** The searchDelegate - setState is not necessary now (it doses for us

//This works for the app, but have errors for web, probably because of the buildcontext problem
class DataSearch extends SearchDelegate<String> {
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

  String selectedListTitle = '';

  @override
  List<Widget> buildActions(BuildContext context) {
    // TODO: implement buildActions
    //actions for app bar - the one on the right side (normally, a cross - close the search bar)
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
          //don't need to use setState(), when you click cross, the input text will be cleared
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    //what do you want to have for the leading part - leading icon on the left of the app bar
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
        //this is an attribute provided by the delegate (the transitionAnimation)
        //****Also, the query property is the text which the user enters in the text field for searching
      ),
      onPressed: () {
        //now we just close the search bar (more like go back)
        //1st not showing any result (null)
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    // when selected one of the search suggestions,  show result
    return Card(
      child: Center(
        child: Text(
          selectedListTitle,
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    //show when someone searches for something

    //*** if the user hasn't enter anything - show recent searched course,
    //else show the ones matching your input
    final List<String> suggestionList =
        //***********NEW THINGS !!!!!!!!!*******************
        //************ indexWhere****************
        //*******list.where  ---- Returns a new lazy [Iterable] with all elements that satisfy the predicate
        // **** Every course which start with the Sting = query will show
        query.isEmpty
            ? recentSearchedCourses
            : courses.where((course) => course.startsWith(query)).toList();

    //we can return a ListView using Builder
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          onTap: () {
            selectedListTitle = suggestionList[index];
            showResults(context);
          },
          leading: Icon(Icons.library_books),
          title: //use RichText to give an effect (only the part, user typed will show bold and black, the rest show normal and grey
              RichText(
            text: TextSpan(
              style: TextStyle(
                color: Colors.grey,
              ),
              children: [
                TextSpan(
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                  text: suggestionList[index].substring(0, query.length),
                ),
                TextSpan(
                  text: suggestionList[index].substring(query.length),
                ),
              ],
            ),
          ),
        );
      },
      itemCount: suggestionList.length,
    );
  }
}
