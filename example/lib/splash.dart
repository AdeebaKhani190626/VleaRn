import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'controllers/introduction_controller.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome()async{
    await Future.delayed(Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>Introduction()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(0.0), // here the desired height
          child: AppBar(
            backgroundColor: Color(0xFF463263),
          )
      ),
      backgroundColor: Color(0xFF463263),
      body: Container(
        margin: const EdgeInsets.only(top:0),
        // constraints: const BoxConstraints.expand(),
        height: double.infinity,
        width: double.infinity,
        decoration:const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/splashbkg.png"),fit: BoxFit.fill),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/logo.png",height: 140.0, width: 140.0,),
            Container(
              alignment: Alignment.center,
              child: Text('V leaRn',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900,color: Color(0xFFFFFFFF)),),
            ),
            Container(
              alignment: Alignment.center,
              child: Text('Giving You School Vibe',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400,color: Color(0xFFFFFFFF)),),
            ),
          ],
        ),
      ),
    );
  }
}