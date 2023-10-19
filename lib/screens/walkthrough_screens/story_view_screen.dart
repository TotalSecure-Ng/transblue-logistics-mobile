import 'package:flutter/material.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/widgets/story_view.dart';
import 'package:transblue_project/screens/walkthrough_screens/welcome_screen.dart';


class StoryViewScreen extends StatefulWidget {
  const StoryViewScreen({super.key});

  @override
  State<StoryViewScreen> createState() => _StoryViewScreenState();
}

class _StoryViewScreenState extends State<StoryViewScreen> {
  final controller = StoryController();
  List<StoryItem> storyItems = [];

  @override
  void initState(){

    storyItems = [

      StoryItem.pageImage(
          url: "https://images.pexels.com/photos/6169051/pexels-photo-6169051.jpeg?auto=compress&cs=tinysrgb&w=600",
          controller: controller
      ),

      StoryItem.pageImage(
          url: "https://images.pexels.com/photos/262353/pexels-photo-262353.jpeg?auto=compress&cs=tinysrgb&w=400",
          controller: controller
      ),

      StoryItem.pageImage(
          url: "https://images.pexels.com/photos/2231742/pexels-photo-2231742.jpeg?auto=compress&cs=tinysrgb&w=400",
          controller: controller
      ),

      StoryItem.pageImage(
          url: "https://images.pexels.com/photos/7362888/pexels-photo-7362888.jpeg?auto=compress&cs=tinysrgb&w=600",
          controller: controller
      ),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,

        children: <Widget>[
          GestureDetector(
            onTap: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => WelcomeScreen(
                  controller: controller, storyItems: storyItems),
                ),
              );
            },
            child: const Center(
              child: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage("assets/images/logo.png"),
              ),
            ),
          )

        ],
      ),
    );;
  }
}
