import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

import 'accountsuccessful.dart';
import 'avatar.dart';
import '../login.dart';

class SettingName extends StatefulWidget {
  //List signUpData;
  SettingName({Key? key}) : super(key: key);

  @override
  State<SettingName> createState() => _SettingName();
}

class _SettingName extends State<SettingName> {

  bool passwordVisible=true;
  bool checkFirst = false;
  bool checkLast = false;
  bool checks = false;
  TextEditingController _firstcontroller = TextEditingController();
  TextEditingController _lastcontroller = TextEditingController();

  //List signUpData;
  //_SettingName(this.signUpData);

  /* Validation Checks */
  void ValidateFirstName(String first) {
    bool isvalid = false;
    if (first == '')
      isvalid = false;
    else
      isvalid = true;
    isvalid? checkFirst=true: checkFirst=false;
  }

  void ValidateLastName(String second) {
    bool isvalid = false;
    if (second == '')
      isvalid = false;
    else
      isvalid = true;
    isvalid? checkLast=true: checkLast=false;
  }

  void ValidateAll(bool first, bool last) {
    bool isvalid=false;
    if (first && last)
      isvalid = true;
    isvalid? checks=true: checks=false;
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
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 10.0, top: 15.0),
                child: Row(
                  children: [
                    Image.asset('images/logointro.png',height: 100,width: 100,),
                    SizedBox(width:200),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 30.0),
                        child: Row(
                          children: [
                            TextButton(onPressed: (){ Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=> Login()));},child: Text('Login',style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700,color: Color(0xFF463263),
                            ),
                            ),
                            )
                          ],
                        ),
                      ),
                    ),
                    //  Image.asset("images/logointro.png",height: 90,width: 100,),
                  ],
                ),
              ),
              SizedBox(height:70),
              // create an account
              Text('Set Avatar Name',style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700,color: Color(0xFF82808A)),),
              SizedBox(height:5),
              // Signup to continue
              Text('Give an identity to your avatar',style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400,color: Color(0xFFA5A3AF)),),
              SizedBox(height:30),
              // steps completed
              Image.asset('images/step3.png',height: 50,width: 250,),

              SizedBox(height: 50,),
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
                    padding: const EdgeInsets.only(left: 30.0, top: 7),
                    child: TextField(
                      controller: _firstcontroller,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText:'First Name',
                        hintStyle: TextStyle(color: Color(0xFF463263), fontSize: 15),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30,),
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
                    padding: const EdgeInsets.only(left: 30.0, top: 7),
                    child: TextField(
                      controller: _lastcontroller,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText:'Second Name',
                        hintStyle: TextStyle(color: Color(0xFF463263),fontSize: 15),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height:60,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:60.0),
                    child: ElevatedButton(onPressed: (){
                      //Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=> Avatar()));
                      },child: Text('BACK',style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400,color: Color(0xFF463263),
                    ),
                    ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        side: BorderSide(color: Colors.black, width: 1),
                        minimumSize: Size(130,45),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:20.0),
                    child: ElevatedButton(onPressed: (){
                      ValidateFirstName(_firstcontroller.text);
                      ValidateLastName(_lastcontroller.text);

                      ValidateAll(checkFirst, checkLast);

                      /* Assigning Values */
                      //checks? signUpData.add(_firstcontroller.text): print("Cannot assign first name");
                      //checks? signUpData.add(_lastcontroller.text): print("Cannot assign last name");

                      checks? Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=> AccountSuccessful())):
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Check your entered data again! Either empty or wrong.")));},
                      child: Text('FINISH',style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400,color: Colors.white,
                    ),
                    ),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF8867CF),
                        minimumSize: Size(135,45),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        )
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),),
      ),
    );
  }
}
