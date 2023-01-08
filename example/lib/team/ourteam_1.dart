import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../homePage.dart';

final Uri _url = Uri.parse('https://www.linkedin.com/in/syedmuhammadsaadsalman/');
final Uri _url1 = Uri.parse('https://www.instagram.com/syedmuhammadsaadsalman/');

class Ourteam1 extends StatelessWidget {
  const Ourteam1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(0.0), // here the desired height
          child: AppBar(
            backgroundColor: Color(0xFF463263),
          )
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFC0B7ED),
      body: Container(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15.0,left: 10),
              child: Image.asset("images/logowhite.png", height:100, width:100,),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 350.0,top: 60),
              child: GestureDetector(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) =>HomePage()));
                  },
                  child: Image.asset("images/img_1.png", height:30, width:30,)),
            ),
            Center(
              child: Column(
                children: [
                  SizedBox(height: 110,),
                  Padding(
                    padding: const EdgeInsets.only(top: 38.0),
                    child: Text('Meet Our Team',style: TextStyle(fontSize: 24,color: Color(0xFFFFFFFF),fontWeight: FontWeight.w600),),
                  ),
                ],
              ),
            ),
            Padding(
            padding: const EdgeInsets.only(top: 205),
            child: Container(
            height: 430,
            decoration: BoxDecoration(
            color: Color(0xFF988AE1),
            ),
            ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 620),
              child: Container(
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
              ),
            ),
            Center(
              child: Column(
                children: [
                     Padding(
                       padding: const EdgeInsets.only(top: 200.0),
                       child: Image.asset("images/saad.png", height:400, width:264,),
                     ),
                  SizedBox(height: 60,),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5.0),
                    child: Text('Supervisor',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700,color: Color(0xFF463263)),),
                  ),
                     Text('Syed Muhammad Saad Salman',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700,color: Color(0xFF463263)),),
                  SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.only(left: 90.0),
                    child: Row(
                      children: [
                        Image.asset('images/twitter.png',height:44.04, width:60,),
                        SizedBox(width: 30,),
                        GestureDetector(
                            onTap: _launchUrl,
                            child: Image.asset("images/linkedin.png", height:40.89, width:40,)),
                        SizedBox(width: 30,),
                        GestureDetector(
                            onTap: _launchUrl1,
                            child: Image.asset("images/insta.png", height:62.65, width:65,))
                      ],
                    ),
                  )
                ],
              ),
            ),

          ],
        ),

      ),
    );

  }
  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }
  Future<void> _launchUrl1() async {
    if (!await launchUrl(_url1)) {
      throw 'Could not launch $_url1';
    }
  }
}
