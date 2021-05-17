import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:khadamat_blue_coller/stateless/problem_details_screen_(15).dart';
import 'package:khadamat_blue_coller/stateless/worker_card.dart';

import '../color.dart';
import '../styling.dart';
import 'choose_location_screen_(15).dart';

class NewOrderScreen15 extends StatefulWidget {
  const NewOrderScreen15({Key key}) : super(key: key);

  @override
  _NewOrderScreen15State createState() => _NewOrderScreen15State();
}

class _NewOrderScreen15State extends State<NewOrderScreen15> {
  double pageIndex = 0;
  int panelCount = 2;
  CarouselController _controller = CarouselController();
  List<Widget> items = [
    ChooseLocation(),
    ProblemDetails(),
  ];

  void scrollPanel() {
    if(pageIndex < panelCount - 1)
      {
        pageIndex++;
        _controller.nextPage(
            duration: Duration(milliseconds: 300), curve: Curves.linear);
      }
  }

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/stack_layer1.png",
            width: mediaQuery.size.width,
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 50.0,
                    left: 30.0,
                    right: 30.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /*Directionality(
                        textDirection: TextDirection.ltr,
                        child: Icon(
                          Icons.arrow_back_ios_outlined,
                          color: Colors.white,
                          size: 30.0,
                        ),
                      ),*/
                      Text(
                        "New order",
                        style: TitleTextStyle,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: mediaQuery.size.height * 0.04),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25.0),
                      topLeft: Radius.circular(25.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 30,
                      right: 20.0,
                      left: 20.0,
                      bottom: 20,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Order service from",
                          style: blackMediumTextStyle,
                        ),
                        WorkerCard(),
                        CarouselSlider(
                          items: items,
                          carouselController: _controller,
                          options: CarouselOptions(
                            height: mediaQuery.size.height * 0.65,
                            viewportFraction: 1.0,
                            initialPage: 0,
                            enlargeCenterPage: true,
                            enableInfiniteScroll: false,
                            onPageChanged: (index, reason) {
                              setState(() {
                                print(reason.toString());
                                pageIndex = index.toDouble();
                              });
                            },
                          ),
                        ),
                        Center(
                          child: DotsIndicator(
                            dotsCount: panelCount,
                            position: pageIndex,
                            decorator: DotsDecorator(
                              color: titleTextColor, // Inactive color
                              activeColor: activeContextTextColor,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              scrollPanel();
                            });
                          },
                          style: ButtonStyle(
                            //minimumSize: MaterialStateProperty.all(Size(width, height)),
                            backgroundColor: MaterialStateProperty.all(
                                activeContextTextColor),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "Continue",
                              style: buttonTextStyle,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
