import 'package:dine_ui/main_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: theme.copyWith(
            colorScheme: theme.colorScheme.copyWith(
                primary: Colors.pinkAccent,
                secondary: Colors.white54.withOpacity(0.6))),
        home: const MainPage());
  }
}
