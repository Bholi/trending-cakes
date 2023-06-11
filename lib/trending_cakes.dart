import 'package:flutter/material.dart';

class TrendingCakes extends StatelessWidget {
  const TrendingCakes({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: 170.0,
      height: 240,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 239, 239, 239),
          borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0)),
            child: Image.asset(
              "images/img1.jpg",
              fit: BoxFit.cover,
              height: 150,
              width: double.infinity,
            ),
          ),
          const SizedBox(
            height: 4.0,
          ),
          Container(
            margin: const EdgeInsets.only(left: 10.0),
            child: const Text(
              "Cake Name",
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 6.0,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Rs 500",
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    "Rs 399",
                    style: TextStyle(decoration: TextDecoration.lineThrough),
                  )
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 5.0,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: 3.0,
                  ),
                  Text("4.2"),
                  SizedBox(
                    width: 3.0,
                  ),
                  Text("|35 Reviews|"),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
