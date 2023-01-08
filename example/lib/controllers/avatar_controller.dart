import 'package:flutter_unity_widget_example/firebase_services/firebase_storage.dart';
import 'package:get/get.dart';

class AvatarController extends GetxController {

  final allAvatars = <String>[].obs;

  @override
  void onReady() {
    getAllAvatars();
    super.onReady();
  }

  Future<void> getAllAvatars() async {
    print("Getting Avatars");
    List<String> imgName =  [
      "fone",
      "ftwo",
      "fthree",
      "mone",
      "mtwo",
      "mthree",
    ];
    try {
      for(var img in imgName) {
        final imgUrl = await Get.find<FirebaseStorageService>().getImage(img);
        allAvatars.add(imgUrl!);
      }
    } catch (e) {
      print(e);
    }
  }
}