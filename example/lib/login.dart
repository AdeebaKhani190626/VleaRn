import 'package:firebase_auth/firebase_auth.dart';
import 'firebase_services/auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_unity_widget_example/signup/signup.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'homePage.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String? errorMessage = '';
  bool isLogin = true;

  bool passwordVisible=true;

  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();

  Future<void> signInWithEmailAndPassword() async {
    try {
      print("Authenticating");
      await Auth().signInWithEmailAndPassword(
          email: _controllerEmail.text,
          password: _controllerPassword.text,);
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  Future<void> createUserWithEmailAndPassword() async {
    try {
      await Auth().createUserWithEmailAndPassword(
          email: _controllerEmail.text,
          password: _controllerPassword.text,);
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  Widget _errorMessage() {
    return Text(errorMessage == '' ? '' : '$errorMessage');
  }

  @override
  void dispose() {
    _controllerEmail.dispose();
    _controllerPassword.dispose();

    super.dispose();
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
                 SizedBox(width:190),
                 Container(
                   child: Padding(
                     padding: const EdgeInsets.only(bottom: 30.0),
                     child: Row(
                       children: [
                         TextButton(onPressed: (){ Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>Signup()));},
                           child: Text('Sign Up',style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700,color: Color(0xFF463263),
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
           SizedBox(height:65),
           // Login
           Text('Login',style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700,color: Color(0xFF82808A)),),
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
                 padding: const EdgeInsets.only(left: 20.0, top: 7),
                 child: TextField(
                   controller: _controllerEmail,
                   decoration: InputDecoration(
                     border: InputBorder.none,
                     // prefixIcon: Icon(Icons.person),
                     icon: Image.asset( //        <-- Image
                       'images/profilelogin.png',height: 30,fit: BoxFit.cover,),
                     hintText:'Email Address',
                     hintStyle: TextStyle(color: Color(0xFF463263)),
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
                 padding: const EdgeInsets.only(left: 20.0, top: 7),
                 child: TextField(
                   controller: _controllerPassword,
                   obscureText: passwordVisible,
                   decoration: InputDecoration(
                     border: InputBorder.none,
                     // prefixIcon: Icon(Icons.person),
                     icon: Image.asset( //        <-- Image
                       'images/lock.png',height: 30,fit: BoxFit.cover,),
                     hintText:'Password',
                     hintStyle: TextStyle(color: Color(0xFF463263)),
                     suffixIcon: IconButton(
                       icon: Icon(passwordVisible
                           ? Icons.visibility
                           : Icons.visibility_off),
                           color: Color(0xFF463263),
                       onPressed: () {
                         setState(
                               () {
                             passwordVisible = !passwordVisible;
                           },
                         );
                       },
                     ),
                     alignLabelWithHint: false,
                   ),
                   keyboardType: TextInputType.visiblePassword,
                   textInputAction: TextInputAction.done,
                     ),
                   ),
                 ),
               ),
              SizedBox(height: 10,),
              _errorMessage(), // For Authentication
           // Email
           //Password
           //Sign in with google
           SizedBox(height: 40,),
           Container(
             child: Padding(
               padding: const EdgeInsets.only(left: 40.0, right: 40.0),
               child: SlideAction(
                 elevation: 0,
               outerColor: Color(0xFFF4DAF3),
               innerColor: Color(0xFFBC4296),
               height: 30,
               text: 'Swipe to Continue',textStyle: TextStyle( decoration: TextDecoration.none,color: Color(0xFF463263)),
               onSubmit: (){
                 // do something here
                 isLogin ? signInWithEmailAndPassword() : createUserWithEmailAndPassword();
                 //Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=> HomePage()));
               },),
             ),
           ),
           Container(
             child: Column(
               children: [
                 Image.asset('images/divider.png',height: 120,width: 340,),
               ],
             ),
           ),
           Container(
             child: ElevatedButton.icon(
               icon: Image.asset( //        <-- Image
                 'images/google.png',height: 30,fit: BoxFit.cover,),
               onPressed: () {  },
               label: Text('Signin using Google'),
               style: ElevatedButton.styleFrom(
                   padding: EdgeInsets.only(right: 20.0),
                   fixedSize: Size(300,60),
                   textStyle: TextStyle(fontWeight: FontWeight.w500,fontSize: 17),
                   primary: Color(0xFF8867CF),
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(20),
                   )
               ),
             ),
           )
         ],
       ),),
     ),
    );
  }
}
