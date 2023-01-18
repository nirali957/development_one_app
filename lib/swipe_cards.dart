import 'package:flutter/material.dart';
import 'package:swipe_deck/swipe_deck.dart';

class SwipeCard extends StatefulWidget {
  const SwipeCard({Key? key}) : super(key: key);

  @override
  State<SwipeCard> createState() => _SwipeCardState();
}

class _SwipeCardState extends State<SwipeCard> {
  @override
  Widget build(BuildContext context) {
    const IMAGES = [
      "image_eight",
      "cat_image",
      "image_nine",
      "image_seven",
      "image_two",
      "sunflower_image",
    ];
    final borderRadius = BorderRadius.circular(25.0);

    return Scaffold(
      body: Container(
        child: SwipeDeck(
          startIndex: 0,
          emptyIndicator: Container(
            child: const Center(
              child: Text("Nothing Here"),
            ),
          ),
          cardSpreadInDegrees: 5, // Change the Spread of Background Cards
          onSwipeLeft: () {
            debugPrint("USER SWIPED LEFT -> GOING TO NEXT WIDGET");
          },
          onSwipeRight: () {
            debugPrint("USER SWIPED RIGHT -> GOING TO PREVIOUS WIDGET");
          },
          onChange: (index) {
            debugPrint(IMAGES[index]);
          },
          widgets: IMAGES
              .map((e) => GestureDetector(
                    onTap: () {
                      debugPrint(e);
                    },
                    child: ClipRRect(
                        borderRadius: borderRadius,
                        child: Image.asset(
                          "assets/images/$e.jpg",
                          fit: BoxFit.cover,
                        )),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
