import 'package:flutter/material.dart';
import 'package:news_app_2/core/config/application_theme_manager.dart';
import 'package:news_app_2/home/page/home_view.dart';
import 'package:news_app_2/splash/splash_view.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App',
      debugShowCheckedModeBanner: false,

      theme: ApplicationThemeManager.applicationThemeData,


      initialRoute: SplashView.routeName,
      routes: <String, WidgetBuilder>{
        SplashView.routeName : (context) => const SplashView(),
        HomeView.routeName : (context) => const HomeView(),
      },
      navigatorKey: navigatorKey,
    );
  }
}

