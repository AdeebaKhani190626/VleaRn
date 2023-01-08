import 'package:flutter/material.dart';
import 'package:flutter_unity_widget_example/signup/signup.dart';
import 'package:lottie/lottie.dart';
import 'package:slide_to_act/slide_to_act.dart';
import '../login.dart';
import 'settingupaccount.dart';
import 'settingname.dart';
import 'signup.dart';


class AccountSuccessful extends StatefulWidget {
  //List signUpData;
  AccountSuccessful({Key? key}) : super(key: key);

  @override
  State<AccountSuccessful> createState() => _AccountSuccessful();
}

class _AccountSuccessful extends State<AccountSuccessful> {
  bool passwordVisible=true;

  //List signUpData;
  //_AccountSuccessful(this.signUpData);

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

                    //  Image.asset("images/logointro.png",height: 90,width: 100,),
                  ],
                ),
              ),
              SizedBox(height:70),
              // create an account
              Text('Successful !!!',style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700,color: Color(0xFF82808A)),),
              SizedBox(height:5),
              // Signup to continue
              Text('Enhance your experience by logging in',style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400,color: Color(0xFFA5A3AF)),),
              SizedBox(height:30),
              // steps completed
              Image.asset('images/step4.png',height: 50,width: 250,),
              SizedBox(height: 30,),
              //animation
              Lottie.asset('images/data.json',repeat: true),
              SizedBox(height:20,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:60.0),
                    child: ElevatedButton(onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=> SettingName()));
                      },child: Text('   BACK   ',style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400,color: Color(0xFF463263),

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

                      //print(signUpData[0]);
                      //print(signUpData[1]);
                      //print(signUpData[2]);
                      //print(signUpData[3]);
                      //print(signUpData[4]);
                      //print(signUpData[5]);
                      //print(signUpData[6]);
                      //print(signUpData[7]);

                      Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=> Login()));},child: Text('Login Now',style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400,color: Colors.white,

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
