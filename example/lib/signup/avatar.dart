import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:slide_to_act/slide_to_act.dart';
import '../controllers/avatar_controller.dart';
import 'avatar.dart';
import '../login.dart';
import 'settingname.dart';
import 'settingupaccount.dart';

class AvatarSignUp extends StatefulWidget {
  //List signUpData;
  AvatarSignUp({Key? key}) : super(key: key);

  @override
  State<AvatarSignUp> createState() => _AvatarSignUp();
}

class _AvatarSignUp extends State<AvatarSignUp> {

  //List signUpData;
  //_Avatar(this.signUpData);

  String? _selectedImage;
  String? gender;
  bool passwordVisible=true;

  /* Data for Storing in Firebase as User Info */
  static String signUpAvatar = "";

  @override
  Widget build(BuildContext context) {

    AvatarController _avatarController = Get.find();
    print(_avatarController.allAvatars.length);

    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(0.0), // here the desired height
          child: AppBar(
            backgroundColor: Color(0xFF463263),
          )
      ),
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
              // choose ur avatar
              Text('Choose Your Avatar',style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700,color: Color(0xFF82808A)),),
              SizedBox(height:5),
              // best avatar for u
              Text('The one that best suits you',style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400,color: Color(0xFFA5A3AF)),),
              // avatar background
              SizedBox(height: 40,),
              Container(
                color: Color(0xFFF2F1F8),
                height: 400,
                child: Obx(()=>ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return ClipRRect(
                        child:SizedBox(
                          width:400,
                          height: 800,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 60.0),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _selectedImage = _avatarController.allAvatars[index];
                                  print(_selectedImage);
                                  Fluttertoast.showToast(
                                      msg: "Your avatar has been selected.",
                                      toastLength: Toast.LENGTH_SHORT,
                                      gravity: ToastGravity.BOTTOM,
                                      timeInSecForIosWeb: 1,
                                      backgroundColor: Color(0xFF463263),
                                      textColor: Colors.white,
                                      fontSize: 16.0
                                  );
                                });
                              },
                              child: FadeInImage(
                                image: NetworkImage(_avatarController.allAvatars[index]),
                                placeholder: AssetImage("images/logointro.png"),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(width: 0);
                    },
                    itemCount: _avatarController.allAvatars.length),
                )
              ),
              //buttons
              SizedBox(height:35,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:60.0),
                    child: ElevatedButton(onPressed: (){ //Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=> SettingUpAccount(signUpData: signUpData,)));
                       },child: Text('BACK',style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400,color: Color(0xFF463263),

                    ),
                    ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        side: BorderSide(color: Color(0xFF463263), width: 1),
                        minimumSize: Size(135,45),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:20.0),
                    child: ElevatedButton(onPressed: (){

                      /* Assigning Values */
                      signUpAvatar = _selectedImage!;
                      //signUpData.add(signUpAvatar);

                      //print(signUpData[3]);

                      Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=> SettingName()));},child: Text('PICK ME',
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400,color: Colors.white,

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
      ),
      ),
    ),
    );
  }
}

