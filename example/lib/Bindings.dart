import 'package:get/get.dart';

import 'controllers/avatar_controller.dart';

class AppBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AvatarController>(() => AvatarController(), fenix:true);
  }
}