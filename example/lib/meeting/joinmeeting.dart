import 'package:flutter/material.dart';

import '../login.dart';

class JoinMeeting extends StatefulWidget {
  @override
  _JoinMeeting createState() => _JoinMeeting();
}

class _JoinMeeting extends State<JoinMeeting> {
  int _currentIndex = 0;
  List<Widget> _pages = <Widget>[];

  @override
  void initState() {
    _pages.add(CategoryScreen());
    _pages.add(HomeScreen());
    _pages.add(SettingScreen());
    super.initState();
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
      backgroundColor: Color(0xFFFFFFFF),
      body: _pages[_currentIndex],
      floatingActionButtonLocation:
      FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(10.0),
        child: FloatingActionButton(
          backgroundColor: _currentIndex == 1 ? Color(0xff56389A) : Color(0xff56389A),
          child: Icon(Icons.check),
          onPressed: () => setState(() {
            _currentIndex = 1;
          }),
        ),
      ),
    );
  }
}

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(0.0), // here the desired height
          child: AppBar(
            backgroundColor: Color(0xFF463263),
          )
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 35.0,top: 30.0),
                      child: Image.asset('images/drawer.png',height: 35,width: 35,),
                    ),
                    SizedBox(width:210),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30.0,left: 60),
                        child: Row(
                          children: [
                            Image.asset('images/proilehome.png',height: 35,width: 35,),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height:20),
              // join meeting
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Text('Join Meeting',style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700,color: Color(0xFF82808A)),),
              ),
              //meeting img
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(right: 10.0, left:10),
                child:  Image.asset('images/meeting.png', width:345, height:230),
              ),
              //meeting link text
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Container(
                  height: 65,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Color(0xFFF2F1F8),
                      border: Border.all(color: Color(0XFFF2F1F8)),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 7),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                       hintText:'Enter Meeting Link',
                        hintStyle: TextStyle(color: Color(0xFF463263)),
                      ),
                    ),
                  ),
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Center(child: Text('Create Meeting ')),
    );
  }
}

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Center(child: Text('Reminder')),
    );
  }
}