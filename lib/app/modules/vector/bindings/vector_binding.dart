import 'package:get/get.dart';

import '../controllers/vector_controller.dart';

class VectorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VectorController>(
      () => VectorController(),
    );
  }
}
