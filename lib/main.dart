// ignore_for_file: public_member_api_docs

// import 'dart:html';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';

import 'login/login.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:get/get.dart';

void main() => runApp(const MyApp('Printing Demo'));

class MyApp extends StatelessWidget {
  const MyApp(this.title);
//
  final String title;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Root(),
      debugShowCheckedModeBanner: false,
    );
  }

  //
}

class Root extends StatelessWidget {
  const Root({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // child: child,
      body: VxResponsive(
        fallback: Container(),
        xsmall: Xsmall(),
        large: Home(),
        // small: ,
        small: Xsmall(),
        medium: Home(),
      ),
    );
  }
}

class Xsmall extends StatelessWidget {
  const Xsmall({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          GestureDetector(child: FaIcon(FontAwesomeIcons.facebook)),
          SizedBox(
            width: 20,
          ),
          GestureDetector(child: FaIcon(FontAwesomeIcons.instagram))
        ],
        backgroundColor: Colors.white38,
        title: RichText(
          text: TextSpan(
            text: 'U',
            children: [
              TextSpan(
                text: 'desh ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),

              TextSpan(
                text: 'Academy',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),

              // TextSpan()
            ],
            style: TextStyle(
              color: Colors.red,
              fontSize: 40,
            ),
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        height: context.screenHeight,
        width: context.screenWidth,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fitHeight,
                image: AssetImage(
                  'assets/back_2.jpg',
                ))),
        child: Column(
          children: [
            SizedBox(
              height: kToolbarHeight * 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Chip(
                  label: buildText('Home'),
                ),
                Chip(
                  label: buildText('About Us'),
                ),
                Chip(
                  label: buildText('Course'),
                ),
                Chip(
                  label: buildText('Events'),
                ),
                Chip(
                  label: buildText('Pages'),
                  labelStyle: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            ),

            'Addmission will be Close Soon ..'
                .marquee(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                  ),
                )
                .h10(context),
            SizedBox(
              height: context.percentHeight * 20,
            ),
            Text(
              'Addmission',
              style: buildTextStyle(
                FontWeight.bold,
                40,
                Colors.white,
              ),
            ),
            Text(
              'Going on',
              style: buildTextStyle(
                FontWeight.bold,
                40,
                Colors.white,
              ),
            ),
            // Text(
            //   ''
            // ),
            Text(
              '2020-2021',
              style: buildTextStyle(
                FontWeight.bold,
                40,
                Colors.white,
              ),
            ),

            Container(
              child: Text(
                """
Coach the individual. The first basic for coaching is to realize that each person is different and they will.
Know several ways to coach. As a coach and knowing the key point about coaching others as individuals means that you then need to have several tools in your toolkit of ways to effectively coach and give feedback.
                            """,
                textAlign: TextAlign.center,
                style: buildTextStyle(
                  FontWeight.normal,
                  15,
                  Colors.black,
                ),
              ),
            ).pSymmetric(
              h: context.screenWidth * 0.1,
            ),
            20.heightBox,
            ElevatedButton.icon(
              icon: Icon(
                Icons.book,
              ),
              label: Text('ADMISSION NOW'),
              onPressed: () {
                Get.dialog(
                  AlertDialog(
                    content: LoginScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(
                  100,
                  40,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        //  overflow: ,
        fit: StackFit.expand,
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/back_2.jpg',
              fit: BoxFit.fitWidth,
              height: context.screenHeight,
            ),
          ),
          // AppBar()
          Positioned(
            top: 0.0,
            child: Container(
              color: Colors.white30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Text('Ud')
                  RichText(
                    text: TextSpan(
                      text: 'U',
                      children: [
                        TextSpan(
                            text: 'desh',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                            )),
                        TextSpan(
                          text: 'Academy',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                          ),
                        ),
                      ],
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 40,
                      ),
                    ),
                  ),
                  buildText('Home'),
                  buildText('About Us'),
                  buildText('Course'),
                  buildText('Events'),
                  buildText(
                    'Pages',
                  ),

                  Row(
                    children: [
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          child: FaIcon(FontAwesomeIcons.facebook),
                          onTap: () async {
                            if (await canLaunch(
                                'https://www.facebook.com/udesh%20sharma')) {
                              await launch(
                                  'https://www.facebook.com/udesh%20sharma');
                            } else {
                              throw 'Could not launch ';
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                            onTap: () async {
                              var url = 'https://www.instagram.com/';
                              if (await canLaunch(url))
                                await launch(url);
                              else {
                                throw 'Could not lauch';
                              }
                            },
                            child: FaIcon(FontAwesomeIcons.instagram)),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  )
                ],
              ),
            )
                .box
                .size(
                  context.screenWidth,
                  context.screenHeight * 0.1,
                )
                .make(),
          ),
          Align(
            alignment: Alignment(0.0, 0.0),
            child: Container(
              // color: Colors.white60,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  'Addmission will be Close Soon ..'
                      .marquee(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                        ),
                      )
                      .h10(context),
                  20.heightBox,
                  Text(
                    'Addmission',
                    style: buildTextStyle(
                      FontWeight.bold,
                      40,
                      Colors.white,
                    ),
                  ),
                  Text(
                    'Going on',
                    style: buildTextStyle(
                      FontWeight.bold,
                      40,
                      Colors.white,
                    ),
                  ),
                  // Text(
                  //   ''
                  // ),
                  Text(
                    '2020-2021',
                    style: buildTextStyle(
                      FontWeight.bold,
                      40,
                      Colors.white,
                    ),
                  ),
                  Container(
                    child: Text(
                      """
 Coach the individual. The first basic for coaching is to realize that each person is different and they will.
Know several ways to coach. As a coach and knowing the key point about coaching others as individuals means that you then need to have several tools in your toolkit of ways to effectively coach and give feedback.
                            """,
                      textAlign: TextAlign.center,
                      style: buildTextStyle(
                        FontWeight.normal,
                        15,
                        Colors.black,
                      ),
                    ),
                  ).pSymmetric(
                    h: context.screenWidth * 0.4,
                  ),

                  20.heightBox,
                  ElevatedButton.icon(
                    icon: Icon(
                      Icons.book,
                    ),
                    label: Text('ADMISSION NOW'),
                    onPressed: () {
                      Get.dialog(
                        AlertDialog(
                          content: LoginScreen(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(
                        100,
                        40,
                      ),
                    ),
                  ),

                  // Positioned(
                  //   bottom: 30,
                  //   child: Row(
                  //     children: [
                  //       Container(
                  //         child: Column(
                  //           children: [
                  //             ),
                  //             'What is Flutter Framework?'
                  //                 .text
                  //                 .size(context.screenHeight * 0.1)
                  //                 .bold
                  //                 .make(),
                  //           ],
                  //         ).p16(),
                  //       ),
                  //       Column(
                  //         children: [],
                  //       ),
                  //     ],
                  //   ),
                  // )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildRow(
    String date,
    String mou,
  ) {
    return Container(
      height: 200,
      child: Row(
        children: [
          Column(
            children: [
              Text(date),
              Text(mou),
            ],
          ),
          Container(
            height: 10,
            width: 5,
          ),
          Container(
            height: 50,
            child: Text(
              """Lorem ipsum dolor sit amet
              , consectetur adipiscing elit.
               Aenean sodales tortor quis neque
                finibus, lacinia rutrum lorem cursus. Nunc id dignissim odio. Proin ullamcorper enim ac quam placerat porta. Aliquam erat volutpat. Sed lacinia tempor metus eget iaculis. In vulputate""",
            ),
          )
        ],
      ),
    );
  }
}

buildText(String title) {
  return TextButton(
    child: Text(
      title,
      style: TextStyle(color: Colors.white),
    ),
    onPressed: () {},
  );
}

buildTextStyle(FontWeight fontWeight, double fontsized, Color color) {
  return TextStyle(
    fontWeight: fontWeight,
    fontSize: fontsized,
    color: color,
  );
}
