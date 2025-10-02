import 'package:flutter/material.dart';
import 'package:recipely/core/common/app_array.dart';
import 'package:recipely/core/utils/helper.dart';
import 'package:recipely/core/widgets/button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            filterQuality: FilterQuality.high,
            image: AssetImage(AppArray().images[0]),
          ),
        ),
        child: Container(
          decoration: BoxDecoration(color: Colors.black.withOpacity(0.6)),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,

              children: [
                Text(
                  'Help your path to health goals with happiness',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: ResponsiveHelper.getScreenWidth(context) * 0.08,
                    color: AppArray().colors[4],
                  ),
                ),
                SizedBox(
                  height: ResponsiveHelper.getScreenHeight(context) * 0.01,
                ),
                Padding(
                  padding: EdgeInsets.all(
                    ResponsiveHelper.getScreenHeight(context) * 0.02,
                  ),
                  child: CustomButton(title: 'Get Started', onTap: () {}),
                ),
                SizedBox(
                  height: ResponsiveHelper.getScreenHeight(context) * 0.02,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
