import 'package:carousel_slider/carousel_slider.dart';
import 'package:dine_ui/widgets/book_widget.dart';
import 'package:dine_ui/widgets/bottom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  void _modalBottomSheetMenu() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Container(
            height: 350.0,
            color: Colors.transparent,
            child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0))),
                child: const Center(
                  child: Text("This is a modal sheet"),
                )),
          );
        });
  }

  var activeIndex = 0;
  final imageAddress = [
    'assets/main_pic.png',
    'assets/main_pic.png',
    'assets/main_pic.png',
    'assets/main_pic.png',
    'assets/main_pic.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          CarouselSlider.builder(
            options: CarouselOptions(
                height: MediaQuery.of(context).size.height * 0.4,
                enlargeCenterPage: true,
                viewportFraction: 1.0,
                enableInfiniteScroll: true,
                autoPlay: true,
                onPageChanged: (index, reason) =>
                    setState(() => activeIndex = index)),
            itemCount: imageAddress.length,
            itemBuilder: (context, index, currentIndex) {
              final imageAddr = imageAddress[index];
              return buildImage(imageAddr, index);
            },
          ),
          Container(
              padding: const EdgeInsets.only(top: 280, left: 125),
              child: buildIndicator()),
          Stack(
            children: [
              const SizedBox(
                  height: 850,
                  width: double.infinity,
                  child: BookCustom()),
              Container(
                padding: const EdgeInsets.only(top: 730, left: 210),
                child: Container(
                  margin: const EdgeInsets.only(top: 10),
                  height: 70,
                  width: 180,
                  child: FloatingActionButton(
                    backgroundColor: Colors.pinkAccent,
                    onPressed: _modalBottomSheetMenu,
                    child: const Text('book'),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  ),
                ),
              ),
            ],
          )

        ],
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }

  Widget buildImage(String imgAdd, int index) => Container(
        color: Colors.white,
        width: double.infinity,
        child: Image.asset(
          imgAdd,
          fit: BoxFit.fill,
        ),
      );

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: imageAddress.length,
        effect: const WormEffect(
            dotWidth: 13,
            dotHeight: 13,
            activeDotColor: Colors.pinkAccent,
            dotColor: Colors.white),
      );
}
