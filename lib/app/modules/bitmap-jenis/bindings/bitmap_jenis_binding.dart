import 'package:get/get.dart';

import '../controllers/bitmap_jenis_controller.dart';

class BitmapJenisBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BitmapJenisController>(
      () => BitmapJenisController(),
    );
  }
}
