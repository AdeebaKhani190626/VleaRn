import 'package:flutter/material.dart';

import '../login.dart';

class CreateMeeting extends StatefulWidget {
  @override
  _CreateMeeting createState() => _CreateMeeting();
}

class _CreateMeeting extends State<CreateMeeting> {
  TextEditingController controller = new TextEditingController();
  List<String> monthList=["1","2","3","4","5","6","7","8","9","10", "11","12"];
  bool displayMonthList= false;
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
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8.0,
        clipBehavior: Clip.antiAlias,
        child: Container(
          height:90,
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
                  BottomNavigationBarItem(icon: Icon(Icons.check), label: ''),
                  BottomNavigationBarItem(icon: Icon(Icons.access_time),label:'')
                ]),
          ),
        ),
      ),
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
  TextEditingController controller = new TextEditingController();
  List<String> monthList=["1","2","3","4","5","6","7","8","9","10", "11","12"];
  bool displayMonthList= false;
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
              // create meeting
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Text('Create Meeting',style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700,color: Color(0xFF82808A)),),
              ),
              //meeting title
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
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
                        hintText:'Meeting Title',
                        hintStyle: TextStyle(color: Color(0xFF463263)),
                      ),
                    ),
                  ),
                )),
              //date text
              SizedBox(height: 20,),
              Align(
                alignment: Alignment.topLeft,
                child:Padding(
                  padding: const EdgeInsets.only(left: 35.0),
                  child:Text('Date of Meeting', style: TextStyle( fontSize: 15, fontWeight: FontWeight.w500,color: Color(0xFF463263)),
                  ),
                ),
              ),
              //date of meeting
              SizedBox(height: 15,),
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
              Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 60.0),                      child: Container(
                        height: 65,
                        width: 67,
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
                              hintText:'DD',
                              hintStyle: TextStyle(color: Color(0xFF463263)),
                              alignLabelWithHint: false,
                            ),
                            keyboardType: TextInputType.visiblePassword,
                            textInputAction: TextInputAction.done,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Container(
                        height: 65,
                        width: 67,
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
                              hintText:'MM',
                              hintStyle: TextStyle(color: Color(0xFF463263)),
                              alignLabelWithHint: false,
                            ),
                            keyboardType: TextInputType.visiblePassword,
                            textInputAction: TextInputAction.done,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Container(
                        height: 65,
                        width: 100,
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
                              hintText:'  YYYY',
                              hintStyle: TextStyle(color: Color(0xFF463263)),
                              alignLabelWithHint: false,
                            ),
                            keyboardType: TextInputType.visiblePassword,
                            textInputAction: TextInputAction.done,
                          ),
                        ),
                      ),
                    ),
                  ]
              ),
              //time text
              SizedBox(height: 20,),
              Align(
                alignment: Alignment.topLeft,
                child:Padding(
                  padding: const EdgeInsets.only(left: 35.0),
                  child:Text('Time of Meeting', style: TextStyle( fontSize: 15, fontWeight: FontWeight.w500,color: Color(0xFF463263)),
                  ),
                ),
              ),
              //time of meeting
              SizedBox(height: 15,),
              Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 50.0),                      child: Container(
                      height: 65,
                      width: 67,
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
                            hintText:'HH',
                            hintStyle: TextStyle(color: Color(0xFF463263)),
                            alignLabelWithHint: false,
                          ),
                          keyboardType: TextInputType.visiblePassword,
                          textInputAction: TextInputAction.done,
                        ),
                      ),
                    ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child:
                      Image.asset('images/colon.png',height: 15,width: 15,),

                    ),  
                      Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Container(
                        height: 65,
                        width: 67,
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
                              hintText:'MM',
                              hintStyle: TextStyle(color: Color(0xFF463263)),
                              alignLabelWithHint: false,
                            ),
                            keyboardType: TextInputType.visiblePassword,
                            textInputAction: TextInputAction.done,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Container(
                        height: 65,
                        width: 100,
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
                              hintText:'AM/PM',
                              hintStyle: TextStyle(color: Color(0xFF463263)),
                              alignLabelWithHint: false,
                            ),
                            keyboardType: TextInputType.visiblePassword,
                            textInputAction: TextInputAction.done,
                          ),
                        ),
                      ),
                    ),
                  ]
              ),
              //participants text
              SizedBox(height: 20,),
              Align(
                alignment: Alignment.topLeft,
                child:Padding(
                  padding: const EdgeInsets.only(left: 35.0),
                  child:Text('Add Participants', style: TextStyle( fontSize: 15, fontWeight: FontWeight.w500,color: Color(0xFF463263)),
                  ),
                ),
              ),
              //participants of meeting
              SizedBox(height: 15,),
              Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),                      child: Container(
                      height: 65,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color(0xFFF2F1F8),
                          border: Border.all(color: Color(0XFFF2F1F8)),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 0.0, top: 0),
                        child: TextField(
                          decoration: InputDecoration(
                            suffixIcon: (
                               Image.asset(
                                'images/addparticipant.png',
                                width: 67,
                                height: 100,
                                fit: BoxFit.fitHeight,
                              )
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    ),
                  ]
              ),
              //view meeting details
              SizedBox(height: 5,),
        Container(
          child: Row(
            children: [
              SizedBox(width:200),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 30.0,bottom: 10),
                  child: Row(
                    children: [
                      TextButton(onPressed: (){ Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=> Login()));},child: Text('View Meeting Details',style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400,color: Color(0xFF463263),
                      ),
                      ),
                      )
                    ],
                  ),
                ),
              ),
            ],
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