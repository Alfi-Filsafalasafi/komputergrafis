import 'package:get/get.dart';

import '../controllers/bitmap_karakteristik_controller.dart';

class BitmapKarakteristikBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BitmapKarakteristikController>(
      () => BitmapKarakteristikController(),
    );
  }
}
