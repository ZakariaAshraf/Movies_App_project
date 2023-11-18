import 'package:flutter/material.dart';
import 'package:movies_app_project/splash/spalsh_screen.dart';
import 'application_theme/Application_Theme.dart';
import 'moduls/pages/browser/Browser_View.dart';
import 'moduls/pages/home_layout/home_layout.dart';
import 'moduls/pages/home_view/Home_view.dart';
import 'moduls/pages/search/Search_View.dart';
import 'moduls/pages/watch_list/watch_list_view.dart';

void main() {
  runApp(const MovieApp());
}

class MovieApp extends StatelessWidget {
  const MovieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ApplicationThem.lightTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routName,
      routes: {
        SplashScreen.routName: (context) => const SplashScreen(),
        HomeLayout.routName: (context) => const HomeLayout(),
        SearchView.routname: (context) => const SearchView(),
        HomeView.routName: (context) => const HomeView(),
        BrowserView.routName: (context) =>  BrowserView(),
        WatchListView.routName : (context) => const WatchListView(),
      },
    );
  }
}


