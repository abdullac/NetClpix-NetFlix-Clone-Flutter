import 'package:flutter/material.dart';

import 'presentations/scrn_main_page/scrn_main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.green,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.pink,
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: AppBarTheme(
            color: Colors.black.withOpacity(0.2),
            elevation: 0,
            titleTextStyle:
                const TextStyle(fontSize: 35, fontWeight: FontWeight.w400)),
        // bottomAppBarTheme: BottomAppBarTheme(color: Colors.white),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: Colors.black.withOpacity(0.9)),
        // textTheme: const TextTheme(
        //   bodyLarge: TextStyle(
        //       color: Colors.white, fontSize: 35, fontWeight: FontWeight.w500),
        //   bodyMedium: TextStyle(
        //       color: Color.fromARGB(255, 231, 231, 231),
        //       fontSize: 25,
        //       fontWeight: FontWeight.w300),
        //   bodySmall: TextStyle(
        //       color: Colors.white70, fontSize: 20, fontWeight: FontWeight.w200),
        // ),
      ),
      // theme: ThemeData(
      //   brightness: Brightness.dark,
      //   primarySwatch: Colors.pink,
      //   textTheme: const TextTheme(
      //     bodyLarge: TextStyle(
      //         color: Colors.white54, fontSize: 30, fontWeight: FontWeight.bold),
      //     bodyMedium: TextStyle(
      //         color: Colors.white38, fontSize: 20, fontWeight: FontWeight.w500),
      //     bodySmall: TextStyle(
      //         color: Colors.white30, fontSize: 10, fontWeight: FontWeight.w200),
      //   ),
      // ),
      home: Scaffold(
        extendBodyBehindAppBar: true,
        body: SafeArea(
          child: ScrnMainPage(),
        ),
        resizeToAvoidBottomInset: true,

        /// clear bottom white space. in this case Webview not auto resizing when virtual keyboard openned.
        extendBody: true,
      ),
    );
  }
}
