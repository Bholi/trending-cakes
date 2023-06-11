import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  final String title;
  final VoidCallback onpressed;

  const CustomBtn({super.key, required this.onpressed, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Custom Button")),
      body: Center(
          child: Material(
        color: Colors.amber.shade200,
        borderRadius: BorderRadius.circular(30.0),
        child: InkWell(
          onTap: onpressed,
          borderRadius: BorderRadius.circular(30.0),
          splashColor: Colors.purple.shade100,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.pink),
              borderRadius: BorderRadius.circular(30.0),
            ),
            padding: const EdgeInsets.all(30.0),
            child: Text(title),
          ),
        ),
      )),
    );
  }
}
