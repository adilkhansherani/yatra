import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yatra/constants/colors.dart';
import 'package:yatra/constants/style_constant.dart';
import 'package:yatra/widgets/bottom_navigator_yatra.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:yatra/models/popular_destination_model.dart';
import 'package:yatra/models/travlog_model.dart';

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

  // need to add dots below image slider

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
      body: ListView(physics: const ClampingScrollPhysics(), children: <Widget>[
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
          margin: const EdgeInsets.only(left: 16, right: 16),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              MultipleImageSlider(imagePaths: imagePaths),
            ],
          ),
        ),

        // Service Section
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 24, bottom: 12),
          child: Text(
            'Let\'s Booking!',
            style: mTitleStyle,
          ),
        ),
        Container(
          height: 144,
          margin: const EdgeInsets.only(left: 16, right: 16),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(right: 8),
                      padding: const EdgeInsets.only(left: 16),
                      height: 64,
                      decoration: BoxDecoration(
                        color: mFillColor,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: mBorderColor, width: 1),
                      ),
                      child: Row(
                        children: <Widget>[
                          SvgPicture.asset(
                            'assets/svg/service_flight_icon.svg',
                            fit: BoxFit.contain,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Flight',
                                  style: mServiceTitleStyle,
                                ),
                                Text(
                                  'Feel freedom',
                                  style: mServiceSubtitleStyle,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 8),
                      padding: const EdgeInsets.only(left: 16),
                      height: 64,
                      decoration: BoxDecoration(
                        color: mFillColor,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: mBorderColor, width: 1),
                      ),
                      child: Row(
                        children: <Widget>[
                          SvgPicture.asset(
                            'assets/svg/service_train_icon.svg',
                            fit: BoxFit.contain,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Trains',
                                  style: mServiceTitleStyle,
                                ),
                                Text(
                                  'Intercity',
                                  style: mServiceSubtitleStyle,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(right: 8),
                      padding: const EdgeInsets.only(left: 16),
                      height: 64,
                      decoration: BoxDecoration(
                        color: mFillColor,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: mBorderColor, width: 1),
                      ),
                      child: Row(
                        children: <Widget>[
                          SvgPicture.asset(
                            'assets/svg/service_hotel_icon.svg',
                            fit: BoxFit.contain,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Hotel',
                                  style: mServiceTitleStyle,
                                ),
                                Text(
                                  'Let\'s take a break',
                                  style: mServiceSubtitleStyle,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 8),
                      padding: const EdgeInsets.only(left: 16),
                      height: 64,
                      decoration: BoxDecoration(
                        color: mFillColor,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: mBorderColor, width: 1),
                      ),
                      child: Row(
                        children: <Widget>[
                          SvgPicture.asset(
                            'assets/svg/service_car_rental_icon.svg',
                            fit: BoxFit.contain,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Car Rental',
                                  style: mServiceTitleStyle,
                                ),
                                Text(
                                  'Around the city',
                                  style: mServiceSubtitleStyle,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),

        // Popular Destination Section
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 24, bottom: 12),
          child: Text(
            'Popular Destinations!',
            style: mTitleStyle,
          ),
        ),

        SizedBox(
          height: 140,
          child: ListView.builder(
            itemCount: populars.length,
            padding: const EdgeInsets.only(left: 16, right: 16),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Container(
                  height: 140,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: mBorderColor, width: 1),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 16),
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          populars[index].image,
                          height: 74,
                        ),
                        Text(
                          populars[index].name,
                          style: mPopularDestinationTitleStyle,
                        ),
                        Text(
                          populars[index].country,
                          style: mPopularDestinationSubtitleStyle,
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),

        // Travlog Section
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 24, bottom: 12),
          child: Text(
            'Travlogs!',
            style: mTitleStyle,
          ),
        ),

        SizedBox(
          height: 181,
          child: ListView.builder(
            padding: const EdgeInsets.only(left: 16),
            itemCount: travlogs.length,
            scrollDirection: Axis.horizontal,

            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(right: 16),
                width: 220,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          height: 104,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: AssetImage(travlogs[index].image),
                                fit: BoxFit.cover),
                          ),
                        ),

                        Positioned(
                          right: 0,
                          child: SvgPicture.asset(
                              'assets/svg/travlog_top_corner.svg'),
                        ),

                        Positioned(
                          top: 8,
                          right: 8,
                          child: SvgPicture.asset(
                              'assets/svg/travelkuy_logo_white.svg'),
                        ),

                        Positioned(
                          bottom: 0,
                          child: SvgPicture.asset(
                              'assets/svg/travlog_bottom_gradient.svg'),
                        ),

                        Positioned(
                          bottom: 8,
                          left: 8,
                          child: Text(
                            'Travlog ${travlogs[index].name}',
                            style: mTravlogTitleStyle,
                          ),
                          
                        ),
                      ],
                    ),

                    const SizedBox(height: 8,),

                    Text(
                      travlogs[index].content,
                      maxLines: 3,
                      style: mTravlogContentStyle,
                    ),

                    const SizedBox(height: 8,),

                    Text(
                      travlogs[index].place,
                      style: mTravlogPlaceStyle,
                    )
                  ],
                ),
              );
            },
          ),
        )
      ]),
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
