import 'package:flutter/material.dart';
import 'package:webpagetransition/utils/extensions/hover_extension.dart';

///----Background (Pattern + shape) + Text----------OVERALL----------//////
class TopicCard extends StatelessWidget {
  final Widget child1;
  final String category;
  final Widget child2;
  final int index;
  TopicCard({this.child1, this.child2, this.category, this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 160,
      child: Stack(
        // give it a container parent with constraints - wont change the constraint stack ???? why????//TODO figure this out
        //what's this constraint??? - the biggest widget size
        /// COZ you set up the constraint already asshole!!!!
        overflow: Overflow.visible,
        children: [
          index % 2 == 1
              ? Positioned(
                  child: child1,
                  left: 50,
                  top: 20,
                )
              : Positioned(
                  child: child1,
                  right: 35,
                  bottom: 55,
                ),
          index % 2 == 1
              ? Positioned(
                  right: 35,
                  top: 39,
                  child: child2,
                )
              : Positioned(
                  left: 80,
                  bottom: 85,
                  child: child2,
                ),
          index % 2 == 1
              ? Positioned(
                  left: 20,
                  bottom: 39,
                  child: CategoryTextWidget(
                    category: category,
                  ),
                )
              : Positioned(
                  left: 20,
                  top: 16,
                  child: CategoryTextWidget(
                    category: category,
                  ),
                ),
        ],
      ),
    ).moveUpOnHover.showCursorOnHover;
  }
}

///---Text Part-----------------------------------
class CategoryTextWidget extends StatelessWidget {
  final String category;

  CategoryTextWidget({this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      //if I don't give width and height: parent - Stack, stack constraint will be an area covers the pattern - if set up width and height, it will be the width and height - that means its loose??? but why no follow the child size here????
      width: MediaQuery.of(context).size.width / 9.6,
      height: 70,
      alignment: Alignment.center,
//            padding: EdgeInsets.symmetric(
//              vertical: 6,
//              horizontal: 2,
//            ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            offset: Offset(0, 10),
          ),
        ],
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        category,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            fontFamily: 'SourceSansPro'),
      ),
    );
  }
}
