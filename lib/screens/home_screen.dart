import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
//import 'package:yatra/constants/colors.dart';
import 'package:yatra/constants/style_constant.dart';
import 'package:yatra/widgets/bottom_navigator_yatra.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //int _current = 0;

  List<String> imagePaths = [
    'assets/images/carousel_covid_discount.png',
    'assets/images/carousel_flight_discount.png',
    'assets/images/carousel_hotel_discount.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xfffafafa),
        title: SvgPicture.asset('assets/svg/travelkuy_logo.svg'),
        elevation: 0,
      ),
      backgroundColor: const Color(0xffFafafa),
      bottomNavigationBar: const BottomNavigator(),
      body: ListView(
        physics: const ClampingScrollPhysics(),
        children: <Widget>[
          //promos section
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Text(
              'hi, Goa chale',
              style: mTitleStyle,
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin:const EdgeInsets.only(left: 16, right: 16),
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                MultipleImageSlider(imagePaths: imagePaths),
            ],
          ),
        ),
      ]    
      ),
    );
  }
}
class MultipleImageSlider extends StatelessWidget {
  final List<String> imagePaths;

  const MultipleImageSlider({super.key, required this.imagePaths});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 200,
        autoPlay: true,
        enlargeCenterPage: true,
      ),
      items: imagePaths.map((path) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(path),
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
