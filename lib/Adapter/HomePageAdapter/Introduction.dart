import 'package:flutter/material.dart';

import '../../Variable.dart';
import 'IntroDuctionAnimationTextAdapter.dart';

class Introduction extends StatefulWidget {
  @override
  _IntroductionState createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {
  late double hight, width;

  @override
  Widget build(BuildContext context) {
    hight = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    var borderColor = Colors.redAccent;
    var backgroundColor = Colors.transparent;
    return Container(
      child: width > 600
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 1,
                  child: IntroDuctionAnimationTextAdapter(),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    child: Transform.rotate(
                      angle: 0,
                      child: Container(
                        width: 350,
                        height: 350,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: backgroundColor,
                          border: Border.all(color: borderColor, width: 2),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(IMAGE_PATH),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Transform.rotate(
                    angle: 0,
                    child: FittedBox(
                      child: Container(
                        width: 220,
                        height: 220,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: backgroundColor,
                          border: Border.all(color: borderColor, width: 2),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(IMAGE_PATH),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                IntroDuctionAnimationTextAdapter()
              ],
            ),
    );
  }
}
