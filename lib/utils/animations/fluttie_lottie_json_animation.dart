//import 'package:fluttie/fluttie.dart';
//import 'package:flutter/material.dart';
//
//class LandingPageMainAnimation extends StatefulWidget {
//  @override
//  _LandingPageMainAnimationState createState() =>
//      _LandingPageMainAnimationState();
//}
//
//class _LandingPageMainAnimationState extends State<LandingPageMainAnimation> {
//  ///create a AnimationController for the animation
//  FluttieAnimationController readingBookController;
//
//  ///whether the animation is ready to show - will be set to true if the animation have been loaded by the plugin
//  bool isAnimationReady = false;
//
//  /// The performance overlay can be triggered by tapping on the icon on the
//  /// right-hand side of the toolbar. It can be used to invastigate the
//  /// performance impact of running different animations.  --- TODO
//
//  @override
//  void initState() {
//    // TODO: implement initState
//    super.initState();
//
//    ///Load and prepare the animation in the init state - when this widget has been added
//    prepareAnimation();
//  }
//
//  @override
//  void dispose() {
//    // TODO: implement dispose
//    super.dispose();
//
//    /// when this widget gets removed ... freee the resources used by our animation
//    readingBookController?.dispose();
//  }
//
//  void prepareAnimation() async {
//    //1st check if the platform we are running on is supported by Fluttie package
//    bool isPlatformSupported = await Fluttie.isAvailable();
//    if (isPlatformSupported == false) {
//      print('Animations are not supported on this platform');
//    } else {
//      print('Animation is supported on this platform');
//    }
//
//    //Now the real part
//    Fluttie _fluttie = Fluttie();
//    //Load the composition for the reading book animation. The composition is a Json
//    var readingBookComposition =
//        await _fluttie.loadAnimationFromAsset('animations/.json');
//
//    readingBookController = await _fluttie.prepareAnimation(
//      readingBookComposition,
//    );
//
//    if (mounted) {
//      setState(() {
//        isAnimationReady = true;
//        readingBookController.start();
//      });
//    }
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Column(
//      children: <Widget>[
//        Text('Animation should be built below'),
//        FluttieAnimation(readingBookController),
//      ],
//    );
//  }
//}
