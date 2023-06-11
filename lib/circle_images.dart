import 'package:flutter/material.dart';

class CircleImages extends StatelessWidget {
  final String circleImg;
  final String circleTxt;

  const CircleImages({required this.circleImg,required this.circleTxt, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Image.asset(
            circleImg,
            height: 60.0,
            width: 60.0,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 3.0,
        ),
         Text(
          circleTxt,
          style: const TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
