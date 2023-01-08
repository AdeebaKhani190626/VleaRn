import 'package:flutter/material.dart';
import 'package:flutter_unity_widget_example/integration/simple_screen.dart';
import 'navigationdrawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  List<Widget> _pages = <Widget>[];
  bool click= true;

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
      drawer: const Navigationdrawer(),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8.0,
        clipBehavior: Clip.antiAlias,
        child: Container(
          height:80,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                top: BorderSide(
                  color: Color(0xFF463263),
                  width: 0.5,
                ),
              ),
            ),
            child: BottomNavigationBar(
                currentIndex: _currentIndex,
                backgroundColor: Color(0xFF463263),
                selectedItemColor: Colors.white,
                onTap: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                items: [
                  BottomNavigationBarItem(icon: Icon(Icons.home),label: ''),
                  BottomNavigationBarItem( icon: Icon(Icons.add_rounded), label: ''),
                  BottomNavigationBarItem(icon: Icon(Icons.access_time),label:'')
                ]),
          ),
        ),
      ),
      floatingActionButtonLocation:
      FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(6.0),
        child: FloatingActionButton(
          backgroundColor: _currentIndex == 1 ? Color(0xff56389A) : Color(0xff56389A),
          onPressed: () => setState(() {
            _currentIndex = 1;
            click =! click;
          }),
          child: Icon((click == false) ? Icons.check : Icons.add_rounded),
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
      drawer: const Navigationdrawer(),
      body: SafeArea(
       child: Center(
         child: Column(
           children: [
             Container(
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(left: 35.0,top: 30),
                     child:  GestureDetector(
                         onTap: (){
                           Scaffold.of(context).openDrawer();
                         },
                         child: Image.asset('images/drawer.png',height: 40,width: 40,)),
                   ),
                   SizedBox(width:230),
                   Container(
                     child: Padding(
                       padding: const EdgeInsets.only(top: 30.0,left: 30),
                       child: Row(
                         children: [
                           Image.asset('images/proilehome.png',height: 40,width: 40,),
                         ],
                       ),
                     ),
                   ),
                   //  Image.asset("images/logointro.png",height: 90,width: 100,),
                 ],
               ),
             ),
             SizedBox(height:60),
             // Login
             Padding(
               padding: const EdgeInsets.only(right: 210.0),
               child: Text('Welcome,',style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500,color: Color(0xFF82808A)),),
             ),
             SizedBox(height: 40,),
             Container(
               child: Stack(
                 children: [
                   Image.asset('images/homescreen.png',height: 145,width: 338,),
                   Padding(
                     padding: const EdgeInsets.only(top: 108.0,left: 25.0),
                     child: MaterialButton(
                       onPressed: () {
                         //Navigator.push(context,MaterialPageRoute(builder: (context) =>Createmeeting()));
                       },
                       color: Color(0xFFBC4296),
                       textColor: Colors.white,
                       child: Icon(
                         Icons.arrow_forward,
                         size: 30,
                       ),
                       padding: EdgeInsets.all(18),
                       shape: CircleBorder(),
                     ),
                   )
                 ],
               ),
             ),
              SizedBox(height: 40,),
             Container(
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(left: 38.0,top: 10),
                     child: Text('Meeting Log',style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700,color: Color(0xFF463263
                     )),),
                   ),
                   SizedBox(width:180),
                   Container(
                     child: Padding(
                       padding: const EdgeInsets.only(top: 10.0,left: 0),
                       child: Row(
                         children: [
                           Text('See All',style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700,color: Color(0xFF82808A)),),
                         ],
                       ),
                     ),
                   ),
                   //  Image.asset("images/logointro.png",height: 90,width: 100,),
                 ],
               ),
             ),
             SizedBox(height: 50,),
             Container(
               height: 150,
               child: Padding(
                 padding: const EdgeInsets.only(left: 28.0, right: 28.0),
                 child: ListView(
                   scrollDirection: Axis.horizontal,
                   children: <Widget>[
                     Container(
                       child: Stack(
                         children: [
                           Image.asset('images/meetinglog.png'),
                           Padding(
                             padding: const EdgeInsets.only(left: 48.0,top: 10),
                             child: Text('Attended',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w700,color: Color(0xFF463263)),),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(left: 54.0,top: 110),
                             child: Text('Title',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: Color(0xFFFFFFFF)),),
                           ),
                         ],
                       ),
                     ),
                     Container(
                       child: Stack(
                         children: [
                           Image.asset('images/meetinglog.png'),
                           Padding(
                             padding: const EdgeInsets.only(left: 50.0,top: 10),
                             child: Text('Created',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w700,color: Color(0xFF463263)),),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(left: 54.0,top: 110),
                             child: Text('Title',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: Color(0xFFFFFFFF)),),
                           ),
                         ],
                       ),
                     ),
                     Container(
                       child: Stack(
                         children: [
                           Image.asset('images/meetinglog.png'),
                           Padding(
                             padding: const EdgeInsets.only(left: 48.0,top: 10),
                             child: Text('Attended',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w700,color: Color(0xFF463263)),),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(left: 54.0,top: 110),
                             child: Text('Title',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: Color(0xFFFFFFFF)),),
                           ),
                         ],
                       ),
                     ),
                     Container(
                       child: Stack(
                         children: [
                           Image.asset('images/meetinglog.png'),
                           Padding(
                             padding: const EdgeInsets.only(left: 48.0,top: 10),
                             child: Text('Attended',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w700,color: Color(0xFF463263)),),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(left: 54.0,top: 110),
                             child: Text('Title',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: Color(0xFFFFFFFF)),),
                           ),
                         ],
                       ),
                     ),
                     Container(
                       child: Stack(
                         children: [
                           Image.asset('images/meetinglog.png'),
                           Padding(
                             padding: const EdgeInsets.only(left: 48.0,top: 10),
                             child: Text('Attended',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w700,color: Color(0xFF463263)),),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(left: 54.0,top: 110),
                             child: Text('Title',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: Color(0xFFFFFFFF)),),
                           ),
                         ],
                       ),
                     ),
                   ],
                 ),
               ),
             )
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
                      child: Image.asset('images/drawer.png',height: 40,width: 40,),
                    ),
                    SizedBox(width:210),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30.0,left: 40),
                        child: Row(
                          children: [
                            Image.asset('images/proilehome.png',height: 40,width: 40,),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height:70),
              // join meeting
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Text('Join Meeting',style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700,color: Color(0xFF82808A)),),
              ),
              //meeting img
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(right: 10.0, left:10),
                child:  Image.asset('images/meeting.png', width:345, height:230),
              ),
              SizedBox(height: 20,),
              /*Container(
                width:67,
                height:50,
                decoration: BoxDecoration(
                    color: Color(0xFFF2F1F8),
                    border: Border.all(color: Color(0XFFF2F1F8)),
                    borderRadius: BorderRadius.circular(20)),
                child: TextField(
                  controller: controller,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                     suffixIcon: GestureDetector(
                       onTap: (){
                         displayMonthList= !displayMonthList;
                       },
                       child: Icon(Icons.arrow_circle_down),
                     )
                     ),
                ),
              ),
              displayMonthList?
              Container(
                height:200,
                width:67,
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(20),
                  color: Color(0xFFF2F1F8),
                  boxShadow:[ BoxShadow(color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 1,
                    blurRadius: 3,
                    offset:Offset(0,1),
                  ),
                  ]),
                child: ListView.builder(
                    itemCount: monthList.length,
                    itemBuilder:(context, index){
                  return GestureDetector(
                      onTap: ()
                      {controller.text=(index+1).toString();
                        },
                      child :ListTile(
                      title: Text(monthList[index]),
                      ),
                  );}),
              ):SizedBox()*/
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
                    padding: const EdgeInsets.only(left: 30.0, top: 7),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText:'Enter Meeting Link',
                        hintStyle: TextStyle(color: Color(0xFF463263), fontSize: 15),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Container(
                child: ElevatedButton.icon(
                 icon: Icon(Icons.meeting_room_sharp),
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=> SimpleScreen()));
                  },
                  label: Text('Click to Enter Meeting'),
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(10.0),
                      fixedSize: Size(300,65),
                      textStyle: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),
                      primary: Color(0xFF8867CF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      )
                  ),
                ),
              )


            ],
          ),
        ),
      ),
    );
  }
}
class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(0.0), // here the desired height
          child: AppBar(
            backgroundColor: Color(0xFF463263),
          )
      ),
      drawer: const Navigationdrawer(),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 35.0,top: 30),
                      child:  GestureDetector(
                          onTap: (){
                            Scaffold.of(context).openDrawer();
                          },
                          child: Image.asset('images/drawer.png',height: 40,width: 40,)),
                    ),
                    SizedBox(width:230),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30.0,left: 30),
                        child: Row(
                          children: [
                            Image.asset('images/proilehome.png',height: 40,width: 40,),
                          ],
                        ),
                      ),
                    ),
                    //  Image.asset("images/logointro.png",height: 90,width: 100,),
                  ],
                ),
              ),
              SizedBox(height:40),
              // Login
                 Text('Reminders',style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700,color: Color(0xFF463263)),),
              SizedBox(height:30),
              Container(
                 height: 500,
                 width: 350,
                 decoration: BoxDecoration(
                   color: Color(0xffF2F1F8),
                   borderRadius: BorderRadius.circular(20.0),
                 ),
                 child: ListView(
                   children: <Widget>[
                     ListTile(
                       leading: Icon(Icons.access_time),
                       title: Text('Title of Meeting', style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: Color(0xFF463263))),
                       subtitle: Text('01-03-23', style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500,color: Color(0xff463263))),
                       trailing: Icon(Icons.delete),
                     ),
                     ListTile(
                       leading: Icon(Icons.access_time),
                       title: Text('Title of Meeting', style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: Color(0xFF463263))),
                       subtitle: Text('01-03-23', style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500,color: Color(0xff463263))),
                       trailing: Icon(Icons.delete),
                     ),
                     ListTile(
                       leading: Icon(Icons.access_time),
                       title: Text('Title of Meeting', style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: Color(0xFF463263))),
                       subtitle: Text('01-03-23', style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500,color: Color(0xff463263))),
                       trailing: Icon(Icons.delete),
                     ),
                     ListTile(
                       leading: Icon(Icons.access_time),
                       title: Text('Title of Meeting', style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: Color(0xFF463263))),
                       subtitle: Text('01-03-23', style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500,color: Color(0xff463263))),
                       trailing: Icon(Icons.delete),
                     ),
                     ListTile(
                       leading: Icon(Icons.access_time),
                       title: Text('Title of Meeting', style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: Color(0xFF463263))),
                       subtitle: Text('01-03-23', style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500,color: Color(0xff463263))),
                       trailing: Icon(Icons.delete),
                     ),
                     ListTile(
                       leading: Icon(Icons.access_time),
                       title: Text('Title of Meeting', style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: Color(0xFF463263))),
                       subtitle: Text('01-03-23', style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500,color: Color(0xff463263))),
                       trailing: Icon(Icons.delete),
                     ),
                     ListTile(
                       leading: Icon(Icons.access_time),
                       title: Text('Title of Meeting', style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: Color(0xFF463263))),
                       subtitle: Text('01-03-23', style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500,color: Color(0xff463263))),
                       trailing: Icon(Icons.delete),
                     ),
                     ListTile(
                       leading: Icon(Icons.access_time),
                       title: Text('Title of Meeting', style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: Color(0xFF463263))),
                       subtitle: Text('01-03-23', style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500,color: Color(0xff463263))),
                       trailing: Icon(Icons.delete),
                     ),
                     ListTile(
                       leading: Icon(Icons.access_time),
                       title: Text('Title of Meeting', style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: Color(0xFF463263))),
                       subtitle: Text('01-03-23', style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500,color: Color(0xff463263))),
                       trailing: Icon(Icons.delete),
                     ),
                     ListTile(
                       leading: Icon(Icons.access_time),
                       title: Text('Title of Meeting', style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: Color(0xFF463263))),
                       subtitle: Text('01-03-23', style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500,color: Color(0xff463263))),
                       trailing: Icon(Icons.delete),
                     ),
                     ListTile(
                       leading: Icon(Icons.access_time),
                       title: Text('Title of Meeting', style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: Color(0xFF463263))),
                       subtitle: Text('01-03-23', style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500,color: Color(0xff463263))),
                       trailing: Icon(Icons.delete),
                     ),
                     // Add more ListTiles here for additional list items
                   ],
                 ),
             )
            ],
          ),
        ),
      ),
    );
  }
}