import 'package:flutter/material.dart';

class NewReleasedWidget extends StatelessWidget {
  const NewReleasedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Image.asset("assets/images/in_card_image.png"),
          Image.asset("assets/images/bookmark.png"),
        ],
      ),
    );
  }
}
