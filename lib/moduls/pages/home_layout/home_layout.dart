import 'package:flutter/material.dart';
import '../browser/Browser_View.dart';
import '../home_view/Home_view.dart';
import '../search/Search_View.dart';
import '../watch_list/watch_list_view.dart';

class HomeLayout extends StatefulWidget {
  static const String routName = "HomeLayout";

  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int selectedIndex = 0;
  List<Widget> screens = [
    HomeView(),
    SearchView(),
    BrowserView(),
    WatchListView(),
  ];
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      decoration: const BoxDecoration(color: Colors.black),
      child: Scaffold(
        body: screens[selectedIndex],
        backgroundColor: Colors.transparent,
        bottomNavigationBar: BottomNavigationBar(
          //backgroundColor:theme.primaryColor,
          currentIndex: selectedIndex,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/home.png"),
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/search.png"),
                ),
                label: "Search"),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/Browser.png"),
                ),
                label: "Browser"),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/WatchList.png"),
                ),
                label: "WatchList"),
          ],
        ),
      ),
    );
  }
}
