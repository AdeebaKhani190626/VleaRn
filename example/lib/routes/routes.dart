import 'package:flutter_unity_widget_example/homePage.dart';
import 'package:flutter_unity_widget_example/signup/avatar.dart';
import 'package:flutter_unity_widget_example/signup/signup.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../controllers/avatar_controller.dart';
import '../signup/settingupaccount.dart';
import '../splash.dart';

class RoutesClass {

  static String home="/";
  static String avatar="/avatar";

  static String getHomeRoute()=>home;
  static String getAvatarRoute()=>avatar;

  static List<GetPage> routes = [
    GetPage(page: ()=>Splash(), name: home),
    GetPage(
        page: ()=>AvatarSignUp(),
        name: avatar,
        binding: BindingsBuilder(() {
          Get.put(AvatarController());
        })
    ),
  ];
}