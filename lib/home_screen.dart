import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:interview_design1/cakes_by_shapes.dart';
import 'package:interview_design1/circle_images.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:interview_design1/trending_cakes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  void _onTapNav(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  

  final List<String> carouselImg = [
    "images/c4.avif",
    "images/c2.avif",
    "images/c3.avif",
    "images/c1.avif",
    "images/c5.avif"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(Icons.menu),
        title: RichText(
            text: TextSpan(
                text: "Cakes",
                style: GoogleFonts.irishGrover(
                    color: Colors.red,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold),
                children: const [
              TextSpan(text: " & ", style: TextStyle(color: Colors.black)),

              TextSpan(
                text: "Flowers",
                style: TextStyle(color: Colors.green),
              )
              //we Can also use WidgetSpan widget between textspan
            ])),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 45.0,
              margin: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                  border: Border.all(width: 1.5, color: Colors.black),
                  borderRadius: BorderRadius.circular(6.0)),
              child: Row(children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
                const Text(
                  "Search cakes, fLowers....",
                  style: TextStyle(color: Colors.black54),
                )
              ]),
            ),
            Container(
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
            ),
            Container(
              width: double.infinity,
              height: 160.0,
              decoration: decorationContainer(),
              margin: const EdgeInsets.symmetric(horizontal: 15.0),
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: CarouselSlider(
                  items: carouselImg
                      .map((e) => ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              e,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ))
                      .toList(),
                  options: CarouselOptions(
                      height: 140,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      autoPlayInterval: const Duration(milliseconds: 1500))),
            ),
            Container(
              margin: const EdgeInsets.all(15.0),
              height: 50.0,
              padding: const EdgeInsets.only(left: 10.0),
              alignment: Alignment.centerLeft,
              decoration: decorationContainer(),
              child: const Text(
                "Trending Cakes",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
            ),
            Container(
              height: 260.0,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              // decoration: decorationContainer(),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children:
                        List.generate(8, (index) => const TrendingCakes())),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(15.0),
              height: 50.0,
              padding: const EdgeInsets.only(left: 10.0),
              alignment: Alignment.centerLeft,
              decoration: decorationContainer(),
              child: const Text(
                "Cakes By Shape",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
            ),
            Container(
              width: double.infinity,
              height: 200,
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: List.generate(18, (index) {
                  return const CakesByShapes();
                })),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(15.0),
              height: 50.0,
              padding: const EdgeInsets.only(left: 10.0),
              alignment: Alignment.centerLeft,
              decoration: decorationContainer(),
              child: const Text(
                "Trending Cakes",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
            ),
            Container(
              height: 260.0,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              // decoration: decorationContainer(),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children:
                        List.generate(12, (index) => const TrendingCakes())),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.pink,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                color: Colors.pink,
              ),
              label: "Whislist"),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.card_travel,
              color: Colors.pink,
            ),
            label: "Offers",
          ),
        ],
        currentIndex: _currentIndex,
        onTap: _onTapNav,
      ),
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
