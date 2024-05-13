import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../Variable.dart';

class IntroDuctionAnimationTextAdapter extends StatefulWidget {
  @override
  _IntroDuctionAnimationTextAdapterState createState() => _IntroDuctionAnimationTextAdapterState();
}

class _IntroDuctionAnimationTextAdapterState extends State<IntroDuctionAnimationTextAdapter> {
  Future count(int n) async {
    return Future.delayed(Duration(seconds: n));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(15, 15, 20, 20),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.all(15),
            child: AnimatedTextKit(
              isRepeatingAnimation: false,
              animatedTexts: [
                TypewriterAnimatedText(
                  '</ Hello there />',
                  speed: Duration(milliseconds: 50),
                  textStyle: TextStyle(
                    color: Colors.teal,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.4,
                  ),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          ),
          Container(
            child: FutureBuilder(
              future: count(1),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return Container(
                    padding: EdgeInsets.all(15),
                    child: AnimatedTextKit(
                      isRepeatingAnimation: false,
                      animatedTexts: [
                        TypewriterAnimatedText(
                          "I'm " + NAME,
                          speed: Duration(milliseconds: 55),
                          textStyle: Theme.of(context).textTheme.headlineLarge,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  );
                }
                return Container();
              },
            ),
          ),
          Container(
            child: FutureBuilder(
              future: count(2),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return Container(
                    padding: EdgeInsets.all(10),
                    child: AnimatedTextKit(
                      isRepeatingAnimation: false,
                      animatedTexts: [
                        TypewriterAnimatedText(
                          PROFESSION_DETAILS,
                          textStyle: Theme.of(context).textTheme.titleMedium,
                        ),
                      ],
                    ),
                  );
                }
                return Container();
              },
            ),
          ),
          Container(
            child: FutureBuilder(
              future: count(5),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return Container(
                    padding: EdgeInsets.all(10),
                    child: AnimatedTextKit(
                      isRepeatingAnimation: false,
                      animatedTexts: [
                        TypewriterAnimatedText(
                          MORE_DETAILS_INTRODUCTION,
                          speed: Duration(milliseconds: 10),
                          textStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            letterSpacing: 1.2,
                            height: 1.3,
                          ),
                        ),
                      ],
                    ),
                  );
                }
                return Container();
              },
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 20),
            child: FutureBuilder(
              future: count(8),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return Container(
                    margin: EdgeInsets.only(top: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Colors.white38,
                    ),
                    child: TextButton(
                      child: Text(
                        "    Resume    ",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      onPressed: () => launchUrl(
                        Uri.parse(
                          "",
                        ),
                      ),
                    ),
                  );
                }
                return Container();
              },
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: FutureBuilder(
              future: count(9),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return Container(
                    padding: EdgeInsets.fromLTRB(0, 40, 10, 20),
                    child: AnimatedTextKit(
                      isRepeatingAnimation: false,
                      animatedTexts: [
                        TypewriterAnimatedText(
                          "Design & Build by Ujjawal with ❤ Flutter",
                          textStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 10,
                            letterSpacing: 1.2,
                            height: 1.3,
                          ),
                        ),
                      ],
                    ),
                  );
                }
                return Container();
              },
            ),
          ),
        ],
      ),
    );
  }
}
