import 'package:get/get.dart';
import 'package:firebase_storage/firebase_storage.dart';

Reference get firebaseStorage=>FirebaseStorage.instance.ref();

class FirebaseStorageService extends GetxService {
  Future<String?> getImage(String? imgName) async{
    print("In Service");
    if (imgName == null) {
      return null;
    }
    try {
      var urlRef = firebaseStorage
          .child("avatars")
          .child('${imgName.toLowerCase()}.png');
      var imgUrl = await urlRef.getDownloadURL();
      return imgUrl;
    } catch (e) {
      return null;
    }
  }
}