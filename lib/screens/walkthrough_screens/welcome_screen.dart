import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

import '../../utils/constants/colors.dart';
import 'custom_story_view.dart';


class WelcomeScreen extends StatelessWidget {
  final StoryController controller;
  final List<CustomStoryItem> storyItems;

  const WelcomeScreen({
    super.key,
    required this.controller,
    required this.storyItems}
      );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StoryView(
        controller: controller,
        storyItems: storyItems,
        // indicatorColor: Colors.black38,
        indicatorForegroundColor: transBlueDarkCyan,

        // This get call on every story screen
        onStoryShow: (s){
          debugPrint("Show is done");
        },

        onComplete: (){
          debugPrint("Completed");
          // Navigator.of(context).push(
          //   MaterialPageRoute(builder: (context){
          //     return const SignInScreen();
          //   })
          // );
        },

        onVerticalSwipeComplete: (direction){
          if(direction == Direction.down){
            Navigator.pop(context);
          }
        },
      ),
    );
  }
}
