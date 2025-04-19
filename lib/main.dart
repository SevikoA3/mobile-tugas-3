import 'package:flutter/material.dart';
import 'views/login_view.dart';
import 'views/home_view.dart';
import 'views/members_view.dart';
import 'views/help_view.dart';
import 'views/stopwatch_view.dart';
import 'views/time_converter_view.dart';
import 'views/tracker_view.dart';
import 'views/recommended_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter MVC App',
      initialRoute: '/login',
      routes: {
        '/login': (_) => LoginView(),
        '/home': (_) => HomeView(),
        '/members': (_) => MembersView(),
        '/help': (_) => HelpView(),
        '/stopwatch': (_) => StopwatchView(),
        '/converter': (_) => TimeConverterView(),
        '/tracker': (_) => TrackerView(),
        '/recommended': (_) => RecommendedView(),
      },
    );
  }
}