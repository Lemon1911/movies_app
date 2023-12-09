import 'package:flutter/material.dart';
import 'package:movies_app/core/config/pages_route_names.dart';
import 'package:movies_app/main.dart';

import 'home/widgets/widgets_recommended.dart';

class MovieDetailsView extends StatelessWidget {
  const MovieDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff121312),
        body: Column(
          children: [
            Row(children: [
              InkWell(
                onTap: () {
                  navigatorKey.currentState
                      ?.pushReplacementNamed(PagesRouteNames.home);
                },
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              const Text(
                "Dora and the lost city of gold",
                style: TextStyle(color: Colors.white),
              ),
            ]),
            SizedBox(
              width: double.infinity,
              height: media.size.height * 0.55,
              child: Stack(
                alignment: const AlignmentDirectional(-0.9, 1.2),
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                      const Text(
                        "Dora and the lost city of gold",
                        style: TextStyle(color: Colors.white),
                      ),
                      const Text(
                        "2019  PG-13  2h 7m",
                        style: TextStyle(color: Colors.white),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: media.size.width * 0.4),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: media.size.width * 0.25,
                                  height: media.size.height * 0.04,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Container(
                                  width: media.size.width * 0.25,
                                  height: media.size.height * 0.04,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: media.size.width * 0.25,
                                  height: media.size.height * 0.04,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Container(
                                  width: media.size.width * 0.25,
                                  height: media.size.height * 0.04,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Having spent most of her life exploring the jungle, nothing could prepare Dora for her most dangerous adventure yet — high school. ",
                              style: TextStyle(color: Colors.white),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(children: [
                              Icon(
                                Icons.star,
                                color: Colors.amberAccent,
                              ),
                              Text(
                                "7.7",
                                style: TextStyle(color: Colors.white),
                              ),
                            ]),
                          ],
                        ),
                      )
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
            SizedBox(
              height: media.size.height * 0.05,
            ),
            Container(
              width: double.infinity,
              height: media.size.height * 0.30,
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
                      itemBuilder: (context, index) =>
                          const NewReleasedWidget(),
                      itemCount: 6,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
