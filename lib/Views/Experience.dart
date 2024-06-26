import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:ujjawalsportfolio/Adapter/AppbarAdapter/MobileAppBar.dart';
import 'package:ujjawalsportfolio/Adapter/AppbarAdapter/OtherDeviceAppBar.dart';
import 'package:ujjawalsportfolio/Adapter/ExperienceAdapter/ExperienceAdapter.dart';
import 'package:ujjawalsportfolio/Adapter/MobileDrawerAdapter/MobileDrawer.dart';
import 'package:ujjawalsportfolio/Variable.dart';

class Experience extends StatefulWidget {
  @override
  _ExperienceState createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {
  late double hight, width;
  Future count(int n) async {
    return Future.delayed(Duration(seconds: n));
  }

  List<Widget> getExperiences() {
    List<Widget> experiences = [];
    for (var i = 0; i < Experiences.length; i++) {
      experiences.add(Column(
        children: [
          FutureBuilder(
              future: count(i + 2),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return ExperienceAdapter(
                    CompanyLogoPath: Experiences[i]["CompanyLogoPath"]!,
                    CompanyName: Experiences[i]["CompanyName"]!,
                    WorkDescription: Experiences[i]["WorkDescription"]!,
                    WorkDuration: Experiences[i]["WorkDuration"]!,
                    WorkDetails: Experiences[i]["WorkDetails"]!,
                  );
                }
                return Container();
              }),
          SizedBox(
            height: 15,
          ),
        ],
      ));
    }
    return experiences;
  }

  @override
  Widget build(BuildContext context) {
    hight = MediaQuery.of(context).size.height > 600 ? MediaQuery.of(context).size.height : 600;
    width = MediaQuery.of(context).size.width > 300 ? MediaQuery.of(context).size.width : 300;
    return Scaffold(
      drawer: width < 600 ? MobileDrawer() : Container(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: width < 600 ? MobileAppBar() : OtherDeviceAppBar(),
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
            height: hight,
            width: width,
            child: ListView(
              children: [
                Center(
                    child: Container(
                  child: AnimatedTextKit(
                    isRepeatingAnimation: false,
                    animatedTexts: [
                      TypewriterAnimatedText("Where I Worked",
                          speed: Duration(milliseconds: 80),
                          textStyle: TextStyle(
                              fontSize: width > 600 ? 40 : 27, color: Colors.white, letterSpacing: 4),
                          textAlign: TextAlign.start),
                    ],
                  ),
                )),
                SizedBox(
                  height: 15,
                ),
                Column(
                  children: getExperiences(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
