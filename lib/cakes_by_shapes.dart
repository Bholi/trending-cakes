import 'package:flutter/material.dart';

class CakesByShapes extends StatelessWidget {
  const CakesByShapes({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 180,
      width: 150,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 239, 238, 238),
          borderRadius: BorderRadius.circular(10)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          child: Image.asset(
            "images/img4.jpeg",
            height: 140,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Container(
            margin: const EdgeInsets.all(10),
            child: const Text(
              "Heart",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
            )),
      ]),
    );
  }
}
