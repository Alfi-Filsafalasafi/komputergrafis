import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:komputergrafis/app/routes/app_pages.dart';

import '../controllers/vector_controller.dart';

class VectorView extends GetView<VectorController> {
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
                      "Vector",
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
                                Get.toNamed(Routes.VECTOR_KARAKTERISTIK),
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
                            onTap: () => Get.toNamed(Routes.VECTOR_FORMATFILE),
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
                      "Grafis vektor adalah gambar yang ditampilkan menggunakan definisi matematis. Grafis vektor adalah salah satu metode yang dapat menciptakan hasil terbaik dan digunakan oleh kebanyakan aplikasi gambar saat ini.",
                      style: TextStyle(
                        color: Color(0xFF393939),
                        wordSpacing: 1.2,
                        height: 1.3,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Aplikasi Data Vector",
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 18),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Ada ratusan aplikasi di pasaran yang dapat digunakan untuk membuat atau memodifikasi data vektor. Dalam dunia percetakan, Adobe Illustrator, Freehand dan Corel Draw adalah aplikasi-aplikasi yang cukup populer.",
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
