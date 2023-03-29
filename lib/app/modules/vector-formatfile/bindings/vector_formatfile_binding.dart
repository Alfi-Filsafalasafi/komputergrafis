import 'package:get/get.dart';

import '../controllers/vector_formatfile_controller.dart';

class VectorFormatfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VectorFormatfileController>(
      () => VectorFormatfileController(),
    );
  }
}
