import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.green,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(brightness: Brightness.dark),
      theme: ThemeData(
        brightness: Brightness.light,
          primarySwatch: Colors.red,
          textTheme: const TextTheme(
            bodyLarge: TextStyle(color: Colors.white54,fontSize: 30,fontWeight: FontWeight.bold),
            bodyMedium: TextStyle(color: Colors.white38,fontSize: 20,fontWeight: FontWeight.w500),
            bodySmall: TextStyle(color: Colors.white30,fontSize: 10,fontWeight: FontWeight.w200),
          )),
      home: const Scaffold(
        extendBodyBehindAppBar: true,
        body: ScrnMainPage(),
        resizeToAvoidBottomInset: true,

        /// clear bottom white space. in this case Webview not auto resizing when virtual keyboard openned.
        extendBody: true,
      ),
    );
  }
}

class ScrnMainPage extends StatelessWidget {
  const ScrnMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
