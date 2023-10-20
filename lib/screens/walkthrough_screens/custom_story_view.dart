import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:story_view/widgets/story_view.dart';

import '../../utils/constants/colors.dart';

class CustomStoryItem extends StoryItem {
  final String imageUrl;
  final String caption;
  final String subCaption;
  final VoidCallback onButton1Pressed;
  final VoidCallback onButton2Pressed;
  final String button1Text;
  final String button2Text;

  CustomStoryItem({
    required this.subCaption,
    required this.imageUrl,
    required this.caption,
    required this.onButton1Pressed,
    required this.onButton2Pressed,
    required this.button1Text,
    required this.button2Text,
    Duration? duration, // Optional duration parameter
  }

      ) : super(
      Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

            Image.network(
              imageUrl,
              width: 250,
              height: 250,
              fit: BoxFit.cover,
            ),

            const SizedBox(height: 16,),

            Text(
              caption,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600
              ),
            ),
            const SizedBox(height: 10,),
            Text(subCaption, style: const TextStyle(fontSize: 16.0),),
            const SizedBox(height: 100,),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                
                Container(
                  width: 300,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(7.0)),
                    color: transBlueDarkCyan,
                  ),
                  child:
                  TextButton(
                    onPressed: () {
                      // toasty(context, 'Gradient Flat button');
                    },
                    style: TextButton.styleFrom(foregroundColor: Colors.transparent),
                    //splashColor: Colors.transparent,
                    child: Text(
                      button1Text.toUpperCase(),
                      style: primaryTextStyle(color: Colors.white, weight: FontWeight.w600),
                    ),
                  ),
                ),

                const SizedBox(width: 30,),

                SizedBox(
                  width: 250,
                  child: TextButton(
                    onPressed: onButton2Pressed,
                    style: TextButton.styleFrom(foregroundColor: Colors.transparent),
                    //splashColor: Colors.transparent,
                    child: Text(
                      button2Text.toUpperCase(),
                      style: primaryTextStyle(color: transBlueDarkCyan, weight: FontWeight.w600),
                    ),
                  ),
                ),
                // ElevatedButton(
                //     onPressed: onButton2Pressed,
                //     child: Text(button2Text)
                // )
              ],
            )
          ],
        ),

      ),
      duration: duration ?? const Duration(seconds: 3));

}