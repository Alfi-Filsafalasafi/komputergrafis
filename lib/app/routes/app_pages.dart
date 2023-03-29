import 'package:get/get.dart';

import '../modules/bitmap-formatfile/bindings/bitmap_formatfile_binding.dart';
import '../modules/bitmap-formatfile/views/bitmap_formatfile_view.dart';
import '../modules/bitmap-jenis/bindings/bitmap_jenis_binding.dart';
import '../modules/bitmap-jenis/views/bitmap_jenis_view.dart';
import '../modules/bitmap-karakteristik/bindings/bitmap_karakteristik_binding.dart';
import '../modules/bitmap-karakteristik/views/bitmap_karakteristik_view.dart';
import '../modules/bitmap/bindings/bitmap_binding.dart';
import '../modules/bitmap/views/bitmap_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/perbedaan/bindings/perbedaan_binding.dart';
import '../modules/perbedaan/views/perbedaan_view.dart';
import '../modules/vector-formatfile/bindings/vector_formatfile_binding.dart';
import '../modules/vector-formatfile/views/vector_formatfile_view.dart';
import '../modules/vector-karakteristik/bindings/vector_karakteristik_binding.dart';
import '../modules/vector-karakteristik/views/vector_karakteristik_view.dart';
import '../modules/vector/bindings/vector_binding.dart';
import '../modules/vector/views/vector_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.BITMAP,
      page: () => BitmapView(),
      binding: BitmapBinding(),
    ),
    GetPage(
      name: _Paths.BITMAP_JENIS,
      page: () => BitmapJenisView(),
      binding: BitmapJenisBinding(),
    ),
    GetPage(
      name: _Paths.BITMAP_KARAKTERISTIK,
      page: () => BitmapKarakteristikView(),
      binding: BitmapKarakteristikBinding(),
    ),
    GetPage(
      name: _Paths.BITMAP_FORMATFILE,
      page: () => BitmapFormatfileView(),
      binding: BitmapFormatfileBinding(),
    ),
    GetPage(
      name: _Paths.VECTOR_KARAKTERISTIK,
      page: () => VectorKarakteristikView(),
      binding: VectorKarakteristikBinding(),
    ),
    GetPage(
      name: _Paths.VECTOR_FORMATFILE,
      page: () => VectorFormatfileView(),
      binding: VectorFormatfileBinding(),
    ),
    GetPage(
      name: _Paths.VECTOR,
      page: () => VectorView(),
      binding: VectorBinding(),
    ),
    GetPage(
      name: _Paths.PERBEDAAN,
      page: () => PerbedaanView(),
      binding: PerbedaanBinding(),
    ),
  ];
}
