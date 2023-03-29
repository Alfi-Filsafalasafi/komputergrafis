import 'package:get/get.dart';

import '../controllers/bitmap_controller.dart';

class BitmapBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BitmapController>(
      () => BitmapController(),
    );
  }
}
