import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';
import '../login.dart';
import 'settingupaccount.dart';
import 'package:email_validator/email_validator.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {

  bool passwordVisible=true;
  bool checkEmail = false;
  bool checkPassword = false;
  bool checks = false;
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();
  TextEditingController _confirmpasswordcontroller = TextEditingController();

  List signUpData = [];

  /* Validation Checks */
  void ValidateEmail(String email) {
    bool isvalid = false;
    if (email == '')
      isvalid = false;
    else
      isvalid = EmailValidator.validate(email);
    isvalid? checkEmail=true: checkEmail=false;
  }

  void ValidatePassword(String pass, String confirmPass) {
    bool isvalid=false;
    if (pass == '' || confirmPass == '')
        isvalid = false;
    else if (pass.compareTo(confirmPass) == 0)
        isvalid = true;
    isvalid? checkPassword=true: checkPassword=false;
  }

  void ValidateAll(bool email, bool pass) {
    bool isvalid=false;
    if (email && pass)
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
              Text('Create an Account',style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700,color: Color(0xFF82808A)),),
              SizedBox(height:5),
              // Signup to continue
              Text('Sign Up to Continue',style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400,color: Color(0xFFA5A3AF)),),
              SizedBox(height:30),
              // steps completed
              Image.asset('images/step1.png',height: 50,width: 250,),

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
                      controller: _emailcontroller,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText:'Email Address',
                        hintStyle: TextStyle(color: Color(0xFF463263),fontSize: 15),
                      ),
                    ),
                  ),
                ),
              ),
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
                    padding: const EdgeInsets.only(left: 30.0, top: 7),
                    child: TextField(
                      controller: _passwordcontroller,
                      obscureText: passwordVisible,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText:'Password',
                        hintStyle: TextStyle(color: Color(0xFF463263),fontSize: 15),
                        alignLabelWithHint: false,
                      ),
                      keyboardType: TextInputType.visiblePassword,
                      textInputAction: TextInputAction.done,
                    ),
                  ),
                ),
              ),
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
                    padding: const EdgeInsets.only(left: 30.0, top: 7),
                    child: TextField(
                      controller: _confirmpasswordcontroller,
                      obscureText: passwordVisible,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText:'Confirm Password',
                        hintStyle: TextStyle(color: Color(0xFF463263),fontSize: 15),
                        alignLabelWithHint: false,
                      ),
                      keyboardType: TextInputType.visiblePassword,
                      textInputAction: TextInputAction.done,
                    ),
                  ),
                ),
              ),
              SizedBox(height:45,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:60.0),
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=> Login()));
                        },
                      child: Text('BACK',style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400,color: Color(0xFF463263),
                    ),
                    ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        side: BorderSide(color: Color(0xFF463263), width: 1),
                        minimumSize: Size(130,45),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:20.0),
                    child: ElevatedButton(onPressed: () {
                      ValidateEmail(_emailcontroller.text);
                      ValidatePassword(_passwordcontroller.text, _confirmpasswordcontroller.text); // password validation

                      ValidateAll(checkEmail, checkPassword);

                      /* Assigning Values */
                      checks? signUpData.add(_emailcontroller.text): print("Cannot assign email");
                      checks? signUpData.add(_passwordcontroller.text): print("Cannot assign password");

                      checks? Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=> SettingUpAccount(signUpData: signUpData,))):
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Check your entered data again! Either empty or wrong.")));},
                      child: Text('NEXT',style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400,color: Colors.white,
                    ),
                    ),style: ElevatedButton.styleFrom(
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
