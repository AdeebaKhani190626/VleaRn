import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_unity_widget_example/widget_tree.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../introduction/introduction_1.dart';
import '../introduction/introduction_2.dart';
import '../introduction/introduction_3.dart';
import '../login.dart';

class Introduction extends StatefulWidget {
  const Introduction({Key? key}) : super(key: key);

  @override
  State<Introduction> createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {
  PageController _controller = PageController();
  // keep track of the last page if we are on the last page show done option
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            // page View
            PageView(
              controller: _controller,
              onPageChanged: (index) {
                setState(() {
                  onLastPage = (index==2);
                });
              },
              children: const [
                introduction1(),
                introduction2(),
                introduction3(),
              ],
            ),
            Container(
              alignment: Alignment(0,0.92),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //Skip
                  GestureDetector(
                    onTap:(){
                      _controller.jumpToPage(2);
                    },

                    child:Text('Skip',style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700,color: Color(0xFF463263)),),
                  ),
                  SmoothPageIndicator(controller : _controller,count:3,effect: ExpandingDotsEffect(
                    activeDotColor: Color(0xFF848080),
                    dotColor:  Color(0xFFD9D9D9),
                    dotHeight: 9,
                    dotWidth: 9
                  ),),
                  onLastPage ?
                  GestureDetector(
                    onTap:() {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>const WidgetTree()));
                    },
                    child:Text('Done',style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700,color: Color(0xFF463263)),),
                  ):
                  GestureDetector(
                    onTap:(){
                      _controller.nextPage(duration:Duration(milliseconds: 500), curve:Curves.easeIn );
                    },
                    child: Icon(
                      Icons.arrow_forward,
                      color: Color(0xFF463263),
                    ),
                  ),
                ],
              ),
            )
          ],
        )
    );
  }
}