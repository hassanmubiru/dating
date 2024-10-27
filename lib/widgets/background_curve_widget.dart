import 'package:flutter/material.dart';

class BackgroundCurveWidget extends StatelessWidget {
  const BackgroundCurveWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      height: 350,
      decoration: const ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(64),
            bottomRight: Radius.circular(64),
          ),
        ),
        gradient:LinearGradient(
        colors: <Color>[
          Color(0XFFFD0E42),
          Color(0XFFC30F31),
        ],
      ),

      ),
      child: const Padding(
        padding: EdgeInsets.only(top: 46.0,left: 20.0),
        child: Text(
          'Discover',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            color: Colors.white,
            fontSize: 36,
          ),
        ),
      ),
      

      

    );
  }
}
enum Swipe { left, right, none }