import 'package:flutter/material.dart';
import 'package:movies_app/core/config/pages_route_names.dart';

import '../../../main.dart';
import '../widgets/widgets_recommended.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: const Color(0xff121312),
      body: Column(
        children: [
          InkWell(
            onTap: () {
              navigatorKey.currentState
                  ?.pushReplacementNamed(PagesRouteNames.homeDetails);
            },
            child: SizedBox(
              width: double.infinity,
              height: media.size.height * 0.36,
              child: Stack(
                alignment: const AlignmentDirectional(-0.9, 1),
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            "assets/images/main_image.png",
                            fit: BoxFit.cover,
                            height: media.size.height * 0.30,
                          ),
                          Image.asset("assets/images/play-button.png"),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: media.size.width * 0.40,
                          ),
                          const Text(
                            "Dora and the lost city of gold",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: media.size.width * 0.40,
                          ),
                          const Text(
                            "2019  PG-13  2h 7m",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      Image.asset("assets/images/in_card_image.png"),
                      Image.asset("assets/images/bookmark.png"),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: media.size.height * 0.25,
            color: const Color(0xff282A28),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                  child: Text(
                    "New Releases ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => const NewReleasedWidget(),
                    itemCount: 6,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: media.size.height * 0.02,
          ),
          Container(
            width: double.infinity,
            height: media.size.height * 0.25,
            color: const Color(0xff282A28),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                  child: Text(
                    "New Releases ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => const NewReleasedWidget(),
                    itemCount: 6,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
