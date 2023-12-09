import 'package:flutter/material.dart';
import 'package:movies_app/features/braews_view.dart';
import 'package:movies_app/features/home/pages/home_view.dart';
import 'package:movies_app/features/search_view.dart';
import 'package:movies_app/features/wishlist_view.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: selectedIndex,
          onTap: (value) {
            selectedIndex = value;
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(
              label: "",
              icon: ImageIcon(
                AssetImage("assets/images/Home.png"),
                color: Colors.blue,
              ),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: ImageIcon(
                color: Colors.blue,
                AssetImage("assets/images/brawes.png"),
              ),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: ImageIcon(
                color: Colors.blue,
                AssetImage(
                  "assets/images/wishlist.png",
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: ImageIcon(
                color: Colors.blue,
                AssetImage("assets/images/Search.png"),
              ),
            ),
          ],
        ),
        body: IndexedStack(
          index: selectedIndex,
          children: const [
            HomeView(),
            BrawesView(),
            WishListView(),
            SearchView(),
          ],
        ),
      ),
    );
  }
}
