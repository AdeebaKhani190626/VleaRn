import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../homePage.dart';

final Uri _url = Uri.parse('https://www.linkedin.com/in/syedmuhammadsaadsalman/');
final Uri _url1 = Uri.parse('https://www.instagram.com/syedmuhammadsaadsalman/');

class Ourteam4 extends StatelessWidget {
  const Ourteam4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
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
              padding: const EdgeInsets.only(left: 330.0,top: 60),
              child: GestureDetector(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) =>HomePage()));
                  },
                  child: Image.asset("images/img_1.png", height:30, width:30,)),
            ),
            Center(
              child: Column(
                children: [
                  SizedBox(height: 100,),
                  Padding(
                    padding: const EdgeInsets.only(top: 38.0),
                    child: Text('Meet Our Team',style: TextStyle(fontSize: 25,color: Color(0xFFFFFFFF),fontWeight: FontWeight.w600),),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 205),
              child: Container(
                height: 400,
                decoration: BoxDecoration(
                  color: Color(0xFF988AE1),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 605),
              child: Container(
                height: 200,
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
                    padding: const EdgeInsets.only(top: 165.0),
                    child: Image.asset("images/Fatima.png", height:448, width:264,),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5.0),
                    child: Text('Member',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700,color: Color(0xFF463263)),),
                  ),
                  Text('Fatima Asim',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700,color: Color(0xFF463263)),),
                  SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.only(left: 80.0),
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

