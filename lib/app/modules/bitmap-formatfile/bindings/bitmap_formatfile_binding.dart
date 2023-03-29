import 'package:get/get.dart';

import '../controllers/bitmap_formatfile_controller.dart';

class BitmapFormatfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BitmapFormatfileController>(
      () => BitmapFormatfileController(),
    );
  }
}
