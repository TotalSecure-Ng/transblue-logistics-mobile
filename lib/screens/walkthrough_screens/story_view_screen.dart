import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/widgets/story_view.dart';
import 'package:transblue_project/screens/walkthrough_screens/custom_story_view.dart';
import 'package:transblue_project/screens/walkthrough_screens/welcome_screen.dart';

import '../../utils/constants/colors.dart';


class StoryViewScreen extends StatefulWidget {
  const StoryViewScreen({super.key});

  @override
  State<StoryViewScreen> createState() => _StoryViewScreenState();
}

class _StoryViewScreenState extends State<StoryViewScreen> {
  final controller = StoryController();

  List<CustomStoryItem> customStoryItems = [];



  @override
  void initState(){
    customStoryItems = [
      CustomStoryItem(
          imageUrl: "https://images.pexels.com/photos/6169051/pexels-photo-6169051.jpeg?auto=compress&cs=tinysrgb&w=600",
          caption: "Welcome to Transblue",
          subCaption: 'Delivering Excellence, One mile at a time',
          onButton1Pressed: (){
            debugPrint("Button One pressed");
          },
          onButton2Pressed: (){
            debugPrint("Button Two pressed");
          },
          button1Text: "Create New Account",
          button2Text: "Log In",

      ),

      CustomStoryItem(
          imageUrl: "https://images.pexels.com/photos/262353/pexels-photo-262353.jpeg?auto=compress&cs=tinysrgb&w=400",
          caption: "Flexible Logistics",
          subCaption: 'Logistics Redefined, Service Perfected',
          onButton1Pressed: (){
            debugPrint("Button One pressed");
          },
          onButton2Pressed: (){
            debugPrint("Button Two pressed");
          },
          button1Text: "Create New Account",
          button2Text: "Log In",
      ),

      CustomStoryItem(
          imageUrl: "https://images.pexels.com/photos/2231742/pexels-photo-2231742.jpeg?auto=compress&cs=tinysrgb&w=400",
          caption: "Logistics Solutions",
          subCaption: 'Bringing Logistics to Life &\nEmpowering Global Trade',
          onButton1Pressed: (){
            debugPrint("Button One pressed");
          },
          onButton2Pressed: (){
            debugPrint("Button Two pressed");
          },
          button1Text: "Create New Account",
          button2Text: "Log In",
      ),

      CustomStoryItem(
          imageUrl: "https://images.pexels.com/photos/7362888/pexels-photo-7362888.jpeg?auto=compress&cs=tinysrgb&w=600",
          caption: "Smart Warehousing",
          subCaption: 'Driving Supply Chain Success &\nMoving the World Forward',
          onButton1Pressed: (){
            debugPrint("Button One pressed");
          },
          onButton2Pressed: (){
            debugPrint("Button Two pressed");
          },
          button1Text: "Create New Account",
          button2Text: "Log In",
      ),
    ];

    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark
        )
    );
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
                  controller: controller, storyItems: customStoryItems),
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
