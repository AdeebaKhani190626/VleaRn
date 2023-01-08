import 'package:flutter/material.dart';

class introduction3 extends StatelessWidget {
  const introduction3({Key? key}) : super(key: key);

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
                SizedBox(height: 100),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "images/intro3.png",height: 290, width: 265,),
                      SizedBox(height: 50),
                      Container(
                        child: Center(
                          child: Column(
                            children: [
                              Text('Share Resources', style: TextStyle(
                                  color: Color(0xFF3A3939),
                                  fontSize: 21,
                                  fontWeight: FontWeight.w600),),
                              SizedBox(height: 12),
                              Text('Easily share resources to help you\n                with  your sessions', style: TextStyle(
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

