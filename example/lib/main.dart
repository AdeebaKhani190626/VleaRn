import 'package:flutter/material.dart';
import 'package:flutter_unity_widget_example/firebase_services/firebase_storage.dart';
import 'package:flutter_unity_widget_example/integration/no_interaction_screen.dart';
import 'package:flutter_unity_widget_example/integration/orientation_screen.dart';
import 'package:flutter_unity_widget_example/routes/routes.dart';
import 'package:flutter_unity_widget_example/signup/signup.dart';
import 'package:flutter_unity_widget_example/splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'package:get/get_navigation/src/routes/get_route.dart';

import 'controllers/avatar_controller.dart';
import 'menu_screen.dart';
import 'integration/api_screen.dart';
import 'integration/loader_screen.dart';
import 'integration/simple_screen.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final AvatarController controller = Get.put(AvatarController());
  final FirebaseStorageService controllerService = Get.put(FirebaseStorageService());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'VleaRn',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: RoutesClass.getHomeRoute(),
      getPages: RoutesClass.routes,
      /* routes: {
        '/': (context) => Signup(), // MenuScreen() - > Splash()
        '/simple': (context) => SimpleScreen(),
      }, */
    );
  }
}
