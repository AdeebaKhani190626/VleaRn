import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slide_to_act/slide_to_act.dart';
import '../controllers/avatar_controller.dart';
import '../routes/routes.dart';
import 'avatar.dart';
import '../login.dart';
import 'settingupaccount.dart';
import 'signup.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SettingUpAccount extends StatefulWidget {
  List signUpData;
  SettingUpAccount({Key? key, required this.signUpData}) : super(key: key);

  @override
  State<SettingUpAccount> createState() => _SettingUpAccount(signUpData);
}

class _SettingUpAccount extends State<SettingUpAccount> {

  List signUpData;
  _SettingUpAccount(this.signUpData);

  String valueGender='';
  bool checkPhoneNo = false;
  bool checkGender = false;
  bool checkDob = false;
  bool passwordVisible = true;
  bool checks = false;
  TextEditingController _phonecontroller = TextEditingController();
  TextEditingController _dobcontroller = TextEditingController();

  /* Assigning Gender */
  void AssignMale() {
    valueGender = 'male';
  }

  void AssignFemale() {
    valueGender = 'female';
  }

  /* Validation Checks */
  void ValidatePhoneNo(String phno) {
    bool isvalid = false;
    if (phno == '')
      isvalid = false;
    else if (phno.length == 10)
    {
      isvalid = true;
    }
    isvalid? checkPhoneNo=true: checkPhoneNo=false;
  }

  void ValidateDob(String dob) {
    bool isvalid = false;
    if (dob == '')
      isvalid = false;
    else
      isvalid = true;
    isvalid? checkDob=true: checkDob=false;
  }

  void ValidateGender() {
    bool isvalid = false;
    if (valueGender == '')
      isvalid = false;
    else
      isvalid = true;
    isvalid? checkGender=true: checkGender=false;
  }

  void ValidateAll(bool phno, bool gender, bool dob) {
    bool isvalid=false;
    if (phno && dob && gender)
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
              SizedBox(height:50),
              // create an account
              Text('Setting Your Account',style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700,color: Color(0xFF82808A)),),
              SizedBox(height:5),
              // Signup to continue
              Text('Fill in Your Details',style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400,color: Color(0xFFA5A3AF)),),
              SizedBox(height:30),
              // steps completed
              Image.asset('images/step2.png',height: 50,width: 250,),
              //phone number
              SizedBox(height: 30,),
              Row(
                children: [
                  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35.0),
                  child: Container(
                    height: 65,
                    width: 67,
                    decoration: BoxDecoration(
                        color: Color(0xFFF2F1F8),
                        border: Border.all(color: Color(0XFFF2F1F8)),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text('+92',style: TextStyle(color: Color(0xFF463263),fontSize: 15),
                      ),
                    ),
                  ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 0.0),
                    child: Container(
                      height: 65,
                      width: 240,
                      decoration: BoxDecoration(
                          color: Color(0xFFF2F1F8),
                          border: Border.all(color: Color(0XFFF2F1F8)),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30.0, top: 7),
                        child: TextField(
                          controller: _phonecontroller,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText:'Phone Number',
                            hintStyle: TextStyle(color: Color(0xFF463263), fontSize: 15),
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
              //date of birth
              SizedBox(height: 15,),
              Align(
                alignment: Alignment.topLeft,
                child:Padding(
                    padding: const EdgeInsets.only(left: 40.0),
                  child:Text('Date of Birth', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600,color: Color(0xFF463263)),
                ),
              ),
              ),

              //dob
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Container(
                  height: 65,
                  width: 345,
                  decoration: BoxDecoration(
                      color: Color(0xFFF2F1F8),
                      border: Border.all(color: Color(0XFFF2F1F8)),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 8),
                    child: TextField(
                      controller: _dobcontroller,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.calendar_month_outlined),
                        hintText: 'dd-mm-yyyy',
                        hintStyle: TextStyle(color: Color(0xFF463263), fontSize: 15, fontWeight: FontWeight.w400),
                        alignLabelWithHint: false
                      ),
                    ),
                  ),
                ),
              ),
              //Gender
              SizedBox(height: 15,),
              Align(
                alignment: Alignment.topLeft,
                child:Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child:Text('Gender', style: TextStyle( fontSize: 15, fontWeight: FontWeight.w600,color: Color(0xFF463263)),
                  ),
                ),
              ),
              //gender buttons
              SizedBox(height:20,),
              Row(
                  children:[
                    Padding(
                      padding: const EdgeInsets.only(left: 110.0),
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            color: Color(0xFFF2F1F8),
                            border: Border.all(color: Color(0XFFF2F1F8)),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20.0, top: 0),
                          child: new IconButton(
                            icon: new Icon(Icons.girl_outlined,size:50),
                            color: Color(0xFF463263),
                            onPressed: () {
                                AssignFemale();
                                Fluttertoast.showToast(
                                msg: "Female is selected as gender",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.BOTTOM,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Color(0xFF463263),
                                textColor: Colors.white,
                                fontSize: 16.0
                            ); },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50.0),
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            color: Color(0xFFF2F1F8),
                            border: Border.all(color: Color(0XFFF2F1F8)),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 30.0, top: 0),
                          child: new IconButton(
                            icon: new Icon(Icons.boy_outlined,size:50),
                            color: Color(0xFF463263),
                            onPressed: () {
                                AssignMale();
                                Fluttertoast.showToast(
                                msg: "Male is selected as gender",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.BOTTOM,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Color(0xFF463263),
                                textColor: Colors.white,
                                fontSize: 16.0
                            );},
                          ),
                        ),
                      ),
                    ),
                  ]
              ),
              //buttons
              SizedBox(height:50,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:60.0),
                    child: ElevatedButton(onPressed: (){ Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=> Signup()));},child: Text('BACK',
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400,color: Color(0xFF463263),
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
                    child: ElevatedButton(
                      onPressed: () {
                        ValidatePhoneNo(_phonecontroller.text);
                        ValidateGender(); // gender validation
                        ValidateDob(_dobcontroller.text);
                        ValidateAll(checkPhoneNo, checkGender, checkDob);

                        /* Assigning Values */
                        checks? signUpData.add(_phonecontroller.text): print("Cannot assign phone");
                        checks? signUpData.add(_dobcontroller.text): print("Cannot assign dob");
                        checks? signUpData.add(valueGender): print("Cannot assign gender");

                        print(signUpData[1]);

                        checks? Get.toNamed(RoutesClass.getAvatarRoute()):
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Check your entered data again! Either empty or wrong.")));},
                        child: Text('NEXT',style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400,color: Colors.white,

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
