import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
      height: screenHeight,
      constraints: const BoxConstraints(
        minHeight: 560.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start ,
        children: [
          //   avatar img
          ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(
                  colors: [
                    CustomColor.scaffoldBg.withAlpha(153),
                    CustomColor.scaffoldBg.withAlpha(153),
                    // opacity × 255 = alpha
                    // CustomColor.scaffoldBg.withOpacity(0.6),
                  ]
              ).createShader(bounds) ;
            } ,
            blendMode: BlendMode.srcATop,
            child: Image.asset(
              "assets/flutterAvatar.png",
              width: screenWidth,
            ),
          ),

          const SizedBox(
            height: 30,
          ),

          // intro message
          const Text(
            "Hi, \nI'm Amjad Merhish\nA Flutter Developer",
            style: TextStyle(
              fontSize: 24.0,
              height: 1.5,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: 190.0,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: CustomColor.yellowSecondary,
                foregroundColor: CustomColor.whitePrimary,
              ),
              child: const Text("Get in touch"),
            ),
          ),
        ],
      ),
    );
  }
}

