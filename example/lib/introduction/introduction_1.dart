import 'package:flutter/material.dart';

class introduction1 extends StatelessWidget {
  const introduction1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(0.0), // here the desired height
            child: AppBar(
              backgroundColor: Color(0xFF463263),
            )
        ),
        backgroundColor: Color(0xFFFFFFFF),
        body: Container(
          color: Color(0xFFFFFFFF),
          child: Center(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10.0, top: 15.0),
                  child: Row(
                    children: [
                      Image.asset("images/logointro.png",height: 100,width: 100,),
                    ],
                  ),
                ),
                SizedBox(height: 120),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "images/intro1.png",height: 290, width: 270,),
                      SizedBox(height: 25),
                      Container(
                        child: Center(
                          child: Column(
                            children: [
                              Text('Create or Join a Meeting', style: TextStyle(
                                  color: Color(0xFF3A3939),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),),
                              SizedBox(height: 12),
                              Text('Enjoy studying in a “METAVERSE”\n with an immersive and interactive\n environment to get those “School\n                          Vibes”.', style: TextStyle(
                                  color: Color(0xFF7A7474),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300,height:1.3),),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}

