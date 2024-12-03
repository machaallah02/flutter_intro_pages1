import 'package:flutter/material.dart';
import 'package:flutter_intro_pages1/home_page.dart';
import 'package:flutter_intro_pages1/intro_screens/intro_screen1.dart';
import 'package:flutter_intro_pages1/intro_screens/intro_screen2.dart';
import 'package:flutter_intro_pages1/intro_screens/intro_screen3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  //lastpage
  bool onlastPage= false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index){
              setState(() {
                onlastPage=(index==2);
              });
            },
            children: const [
              IntroScreen1(),
              IntroScreen2(),
              IntroScreen3(),
        ],
      ),

      //dot indicators 
      Container(
        alignment: const Alignment(0, 0.75),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            //skip
            GestureDetector(
              onTap: (){
                _controller.jumpToPage(2);
              },
              child: const Text(
                'skip',
                ),
                ),

            //dot indicator
            SmoothPageIndicator(controller: _controller, count: 3),

            //next or done
            onlastPage
            ?
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context){
                      return const HomePage();
                    },
                  ),
                );
              },
              child: const Text('done'),
              )
            :GestureDetector(
              onTap: (){
                _controller.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
              },
              child: const Text('next'),
              ),
          ],
        ),
        ),
      ],
      ),
    );
  }
}