import 'package:flutter/material.dart';
import 'ourteam_1.dart';
import 'ourteam_2.dart';
import 'ourteam_3.dart';
import 'ourteam_4.dart';
class OurTeam extends StatefulWidget {
  const OurTeam({Key? key}) : super(key: key);

  @override
  State<OurTeam> createState() => _OurTeamState();
}

class _OurTeamState extends State<OurTeam> {
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
                  onLastPage = (index==3);
                });
              },
              children: const [
                Ourteam1(),
                Ourteam2(),
                Ourteam3(),
                Ourteam4(),
              ],
            ),
            Container(
              alignment: Alignment(0,0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Skip
                  GestureDetector(
                    onTap:(){
                      _controller.previousPage(duration:Duration(milliseconds: 500), curve:Curves.easeIn );
                    },

                    child: Icon(Icons.arrow_back_ios_sharp,color: Colors.white,size: 50,),
                  ),
                  // SmoothPageIndicator(controller : _controller,count:3),
                  GestureDetector(
                      onTap:(){
                        _controller.nextPage(duration:Duration(milliseconds: 500), curve:Curves.easeIn );
                      },
                      child: Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,size: 50,)
                  ),
                ],
              ),
            )
          ],
        )
    );
  }
}
