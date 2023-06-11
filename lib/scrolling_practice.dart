import 'package:flutter/material.dart';

import 'circle_images.dart';

class ScrollingPractice extends StatelessWidget {
  const ScrollingPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scrolling Practice"),
      ),
      body: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) {
            if (index == 0) {
              return Container(
                width: double.infinity,
                height: 95,
                padding: const EdgeInsets.only(top: 10),
                decoration: decorationContainer(),
                margin: const EdgeInsets.all(15),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(18, (index) {
                        return Container(
                          margin: const EdgeInsets.only(left: 15),
                          child: CircleImages(
                            circleImg: "images/img2.jpg",
                            circleTxt: "Flowers $index",
                          ),
                        );
                      })),
                ),
              );
            } else if (index == 1) {
              return Container(
                width: double.infinity,
                height: 150,
                padding: const EdgeInsets.only(top: 10),
                decoration: decorationContainer(),
                margin: const EdgeInsets.all(15),
                child: SingleChildScrollView(
                  child: Column(
                    children: List.generate(
                        18,
                        (index) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "images/img1.jpg",
                                height: 100,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            )),
                  ),
                ),
              );
            } else if (index == 2) {
              return Container(
                width: double.infinity,
                height: 95,
                padding: const EdgeInsets.only(top: 10),
                decoration: decorationContainer(),
                margin: const EdgeInsets.all(15),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(18, (index) {
                        return Container(
                          margin: const EdgeInsets.only(left: 15),
                          child: CircleImages(
                            circleImg: "images/img3.webp",
                            circleTxt: "Flowers $index",
                          ),
                        );
                      })),
                ),
              );
            } else if (index == 3) {
              return Container(
                width: double.infinity,
                height: 150,
                padding: const EdgeInsets.only(top: 10),
                decoration: decorationContainer(),
                margin: const EdgeInsets.all(15),
                child: SingleChildScrollView(
                  child: Column(
                    children: List.generate(
                        18,
                        (index) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "images/img4.jpeg",
                                height: 100,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            )),
                  ),
                ),
              );
            } else if (index == 4) {
              return Container(
                width: double.infinity,
                height: 95,
                padding: const EdgeInsets.only(top: 10),
                decoration: decorationContainer(),
                margin: const EdgeInsets.all(15),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(18, (index) {
                        return Container(
                          margin: const EdgeInsets.only(left: 15),
                          child: CircleImages(
                            circleImg: "images/img5.jpg",
                            circleTxt: "Flowers $index",
                          ),
                        );
                      })),
                ),
              );
            } else {
              return Container(
                height: 100,
                width: 200,
                decoration: decorationContainer(),
                margin: const EdgeInsets.all(20),
                alignment: Alignment.center,
                child: Text("Container no $index"),
              );
            }
          }),
    );
  }

  BoxDecoration decorationContainer() {
    return BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 15,
              spreadRadius: 1)
        ]);
  }
}
