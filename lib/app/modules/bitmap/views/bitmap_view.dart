import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:komputergrafis/app/routes/app_pages.dart';

import '../controllers/bitmap_controller.dart';

class BitmapView extends GetView<BitmapController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 25),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 25),
                    Row(
                      children: [
                        Container(
                          height: 27,
                          width: 34,
                          child: Image.asset("assets/icon/logo.png"),
                        ),
                        SizedBox(width: 24),
                      ],
                    ),
                    SizedBox(height: 23),
                    Text(
                      "Bitmap",
                      style: TextStyle(
                          color: Color(0xFF393939),
                          fontWeight: FontWeight.w300,
                          fontSize: 26),
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 30,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFF264653),
                            ),
                            height: 29,
                            width: 34,
                            child: Image.asset("assets/icon/home.png"),
                          ),
                          SizedBox(width: 10),
                          GestureDetector(
                            onTap: () =>
                                Get.toNamed(Routes.BITMAP_KARAKTERISTIK),
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 11),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  border: Border.all(color: Color(0xFF393939))),
                              height: 29,
                              child: Center(
                                child: Text(
                                  "Karakteristik",
                                  style: TextStyle(color: Color(0xFF393939)),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          GestureDetector(
                            onTap: () => Get.toNamed(Routes.BITMAP_JENIS),
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 11),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  border: Border.all(color: Color(0xFF393939))),
                              height: 29,
                              child: Center(
                                child: Text(
                                  "Jenis-Jenis",
                                  style: TextStyle(color: Color(0xFF393939)),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          GestureDetector(
                            onTap: () => Get.toNamed(Routes.BITMAP_FORMATFILE),
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 11),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  border: Border.all(color: Color(0xFF393939))),
                              height: 29,
                              child: Center(
                                child: Text(
                                  "Format File",
                                  style: TextStyle(color: Color(0xFF393939)),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Gambar bitmap adalah kumpulan bit yang membentuk sebuah gambar. Gambar tersebut memiliki kandungan satuan-satuan titik (atau pixels) yang memiliki warnanya masing-masing (disebut dengan bits, unit terkecil dari informasi pada komputer). Semakin banyak jumlah pixel yang ada pada sebuah gambar, maka semakin halus dan realistik gambar tersebut.",
                      style: TextStyle(
                        color: Color(0xFF393939),
                        wordSpacing: 1.2,
                        height: 1.3,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Aplikasi Data Bitmap",
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 18),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Ada ratusan aplikasi di pasaran yang dapat digunakan untuk membuat atau memodifikasi file gambar dengan data bitmap. Dalam dunia percetakan, Adobe Photoshop adalah aplikasi yang mendominasi pasar. Tapi bukan berarti aplikasi alternatif yang lebih murah seperti Corel Photo-Paint dapat dianggap remeh.",
                      style: TextStyle(
                        color: Color(0xFF393939),
                        wordSpacing: 1.2,
                        height: 1.3,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
