import 'package:get/get.dart';

import '../controllers/perbedaan_controller.dart';

class PerbedaanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PerbedaanController>(
      () => PerbedaanController(),
    );
  }
}
