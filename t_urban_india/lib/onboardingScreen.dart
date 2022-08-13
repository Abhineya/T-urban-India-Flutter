
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:t_urban_india/login_page.dart';


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
decoration: PageDecoration(
  titlePadding: EdgeInsets.all(0),
  contentMargin: EdgeInsets.all(0),
  fullScreen: true
),
              image: Image.asset(
                'assets/onboard1.png',
                height: MediaQuery.of(context).size.height,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
              titleWidget: SizedBox(),
              bodyWidget: const SizedBox()
            ),
            PageViewModel(
                decoration: PageDecoration(
                    titlePadding: EdgeInsets.all(0),
                    contentMargin: EdgeInsets.all(0),
                    fullScreen: true
                ),
                image: Image.asset(
                  'assets/onboard2.png',
                  height: MediaQuery.of(context).size.height,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
                titleWidget: SizedBox(),
                bodyWidget: const SizedBox()
            ),
            PageViewModel(
                decoration: PageDecoration(
                    titlePadding: EdgeInsets.all(0),
                    contentMargin: EdgeInsets.all(0),
                    fullScreen: true,
                ),
                image: Image.asset(
                  'assets/onboard3.png',
                  height: MediaQuery.of(context).size.height,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
                titleWidget: SizedBox(),
                bodyWidget: const SizedBox(),
            ),

          ],
          onDone: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login_page()));
          },

          onSkip: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login_page()));
          },
          curve: Curves.easeInBack,
          skipColor: Colors.white,
          initialPage: 0,
          globalBackgroundColor: Colors.transparent,
          controlsMargin: EdgeInsets.only(bottom: 26.0),
          animationDuration: 1200,
          next: CircleAvatar(
            backgroundColor: Colors.white,
            child: const Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.black,
            ),
          ),
          skip: const Text("Skip",style: TextStyle(fontSize: 18.0),),
          done:MaterialButton(shape:RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)),color:Colors.white,onPressed: (){},child: Text('Lets Go!',style: TextStyle(fontSize: 18.0,color: Colors.black),),),
         // done: const Text('Done',style: TextStyle(fontSize: 18.0,color: Colors.white),),

          dotsDecorator: DotsDecorator(
            activeColor: Colors.white,
            size: const Size.square(10.0),
            activeSize: const Size(20.0, 10.0),
            color: Colors.amberAccent,
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
