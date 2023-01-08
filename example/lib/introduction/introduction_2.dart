import 'package:flutter/material.dart';

class introduction2 extends StatelessWidget {
  const introduction2({Key? key}) : super(key: key);

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
                ),SizedBox(height: 65),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "images/intro2.png",height: 343, width: 395,),
                      SizedBox(height: 30),
                      Container(
                        child: Center(
                          child: Column(
                            children: [
                              Text('Choose an Avatar', style: TextStyle(
                                  color: Color(0xFF3A3939),
                                  fontSize: 21,
                                  fontWeight: FontWeight.w600),),
                              SizedBox(height: 12),
                              Text('Select an Avatar from a series of\n       Avatars that best suits you', style: TextStyle(
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

