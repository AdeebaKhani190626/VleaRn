import 'package:flutter/material.dart';
import 'draweritem.dart';
import 'editprofile.dart';
import 'login.dart';
import 'team/ourteam.dart';

class Navigationdrawer extends StatelessWidget {
  const Navigationdrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Color(0xFFFFFFFF),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24.0,80,24,0),
          child: Column(
            children: [
              headerWidget(),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(right: 190.0),
                child: Text('Avatar',style: TextStyle(fontSize: 12,color: Color(0xFF463263),fontWeight: FontWeight.w700),),
              ),
              Divider(color: Color(0XFFE3DCDC),thickness: 1,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) =>EditProfile()));
                },
                child: DrawerItem(name: 'Change my Avatar', icon:Icons.edit_note_rounded, onPressed:()=> onItemPressed(context,index :0),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) =>EditProfile()));
                },
                child: DrawerItem(name: 'Edit Name', icon:Icons.edit_note_rounded, onPressed:(){
                  Navigator.push(context,MaterialPageRoute(builder: (context) =>Login()));
                },
                ),
              ),
              SizedBox(height: 120,),
              Padding(
                padding: const EdgeInsets.only(right: 190.0),
                child: Text('About Us',style: TextStyle(fontSize: 12,color: Color(0xFF463263),fontWeight: FontWeight.w700),),
              ),
              Divider(color: Color(0XFFE3DCDC),thickness: 1,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) =>OurTeam()));
                },
                child: DrawerItem(name: 'Meet Our Team', icon:Icons.group_outlined, onPressed:()=> onItemPressed(context,index :2),
                ),
              ),
             SizedBox(height: 160,),
             Padding(
               padding: const EdgeInsets.only(right: 210.0),
               child: Container(
                 child: Column(
                   children: [
                   Image.asset('images/logout.png',height: 35,width: 35,),
                     SizedBox(height: 6,),
                     Text('Logout',style: TextStyle(fontSize: 12,color: Color(0xFF463263),fontWeight: FontWeight.w700),),
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
  void onItemPressed(BuildContext context,{required int index}){
  Navigator.pop(context);
  switch(index){
    case 0:
      Navigator.push(context,MaterialPageRoute(builder: (context) =>Login()));
      break;
      default:
        Navigator.pop(context);
        break;
  }
  }
  Widget headerWidget(){
    return Center(
      child: Column(
        children: [
          Text('V leaRn',style: TextStyle(fontSize: 34,color: Color(0xFF62616B)),),
          SizedBox(height: 10,),
          const CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage('images/profiledrawer.png'),
          ),
          SizedBox(height: 10,),
          Text('Fatima Asim',style: TextStyle(fontSize: 20,color: Color(0xFF62616B)),)
        ],
      ),
    );
  }
}
