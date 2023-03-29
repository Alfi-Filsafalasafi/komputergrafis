import 'package:get/get.dart';

import '../controllers/vector_karakteristik_controller.dart';

class VectorKarakteristikBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VectorKarakteristikController>(
      () => VectorKarakteristikController(),
    );
  }
}
