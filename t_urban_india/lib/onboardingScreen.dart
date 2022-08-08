
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:introduction_screen/introduction_screen.dart';


class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: IntroductionScreen(
          pages: [
            PageViewModel(

              titleWidget: Image.asset(
                'assets/onboard1.png',
                height: MediaQuery.of(context).size.height/1.2,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
              bodyWidget: const SizedBox()
            ),
            PageViewModel(

                titleWidget: Image.asset(
                  'assets/onboard2.png',
                  height: MediaQuery.of(context).size.height/1.2,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
                bodyWidget: const SizedBox()
            ),
            PageViewModel(

                titleWidget: Image.asset(
                  'assets/onboard3.png',
                  height: MediaQuery.of(context).size.height/1.2,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
                bodyWidget: const SizedBox()
            ),

          ],
          onDone: () {
            Navigator.pushNamed(context, '/welcome');
          },
          onSkip: () {
            Navigator.pushNamed(context, '/welcome');
          },
          curve: Curves.easeInBack,
          skipColor: Colors.pink,
          initialPage: 0,
          animationDuration: 1200,
          next: const Icon(
            Icons.arrow_forward_ios_outlined,
            color: Colors.pink,
          ),
          skip: const Text("Skip"),
          done: const Text('Done'),
          dotsDecorator: DotsDecorator(
            activeColor: Colors.pink,
            size: const Size.square(10.0),
            activeSize: const Size(20.0, 10.0),
            color: Colors.black26,
            spacing: const EdgeInsets.symmetric(horizontal: 3.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0)),
          ),
          showDoneButton: true,
          showNextButton: true,
          showSkipButton: true,
        ),
      ),
    );
  }
}
