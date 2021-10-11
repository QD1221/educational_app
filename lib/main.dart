import 'package:educational_app/ui/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quang Tran',
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.grey[200]
      ),
      // home: HomePage(),
      routes: {
        '/': (context) => HomePage()
      },
    );
  }
}

