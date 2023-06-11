import 'package:flutter/material.dart';
import 'package:interview_design1/custom_button.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          appBarTheme:
              const AppBarTheme(iconTheme: IconThemeData(color: Colors.black))),
      home:  CustomBtn(
        onpressed: () {
          print("Button Pressed");
        },
        title: "Custom Button",
      ),
    );
  }
}
