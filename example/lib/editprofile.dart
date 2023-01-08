import 'package:flutter/material.dart';
class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFF988AE1),
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
        backgroundColor: Color(0xFF463263),
      ),
      body: Container(
            child: Stack(
              children: [
                Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 78.0),
                        child: Text('Profile',style: TextStyle(fontSize: 26,color: Color(0xFFFFFFFF),fontWeight: FontWeight.w700),),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 265),
                  child: Container(
                    height: 595,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 170.0),
                        child: const CircleAvatar(
                          radius: 60,
                          backgroundImage: AssetImage('images/profiledrawer.png'),
                        ),
                      ),
                       SizedBox(height: 50,),
                       Padding(
                         padding: const EdgeInsets.only(right: 235.0),
                         child: Text('First Name',style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500,color: Color(0xFF463263)),),
                       ),
                      SizedBox(height: 15,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color(0xFFF2F1F8),
                            border: Border.all(color: Color(0XFFF2F1F8)),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 25.0),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                // prefixIcon: Icon(Icons.person),
                                hintText:'Fatima',
                                hintStyle: TextStyle(color: Color(0xFF463263),fontSize: 15),
                              ),
                            ),
                          ),

                        ),
                      ),
                      SizedBox(height: 30,),
                      Padding(
                        padding: const EdgeInsets.only(right: 235.0),
                        child: Text('Last Name',style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500,color: Color(0xFF463263)),),
                      ),
                      SizedBox(height: 15,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color(0xFFF2F1F8),
                            border: Border.all(color: Color(0XFFF2F1F8)),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 25.0),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                // prefixIcon: Icon(Icons.person),
                                hintText:'Asim',
                                hintStyle: TextStyle(color: Color(0xFF463263),fontSize: 15),
                              ),
                            ),
                          ),

                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

      ),
    );
  }
}
