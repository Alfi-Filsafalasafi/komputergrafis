import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:komputergrafis/app/routes/app_pages.dart';

import '../controllers/vector_formatfile_controller.dart';

class VectorFormatfileView extends GetView<VectorFormatfileController> {
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
                          GestureDetector(
                            onTap: () => Get.toNamed(Routes.VECTOR),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                border: Border.all(
                                  color: Color(0xFF264653),
                                ),
                              ),
                              height: 29,
                              width: 34,
                              child: Image.asset("assets/icon/homeinac.png"),
                            ),
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
                                border: Border.all(
                                  color: Color(0xFF264653),
                                ),
                              ),
                              height: 29,
                              child: Center(
                                child: Text(
                                  "Karakteristik",
                                  style: TextStyle(color: Color(0xFF264653)),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          GestureDetector(
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 11),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xFF264653),
                                  border: Border.all(
                                    color: Color(0xFF264653),
                                  )),
                              height: 29,
                              child: Center(
                                child: Text(
                                  "Format File",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Secara umum data vektor dapat disimpan dalam format file:",
                      style: TextStyle(
                        color: Color(0xFF393939),
                        wordSpacing: 1.2,
                        height: 1.3,
                      ),
                    ),
                    SizedBox(height: 15),
                    konten(),
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

class konten extends StatelessWidget {
  const konten({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        EPS(),
        SizedBox(height: 15),
        PDF(),
        SizedBox(height: 15),
        pict(),
        SizedBox(height: 15),
      ],
    );
  }
}

class EPS extends StatelessWidget {
  const EPS({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "EPS",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w300,
            color: Color(0xFF393939),
          ),
        ),
        SizedBox(height: 5),
        Text(
          "format file yang paling populer untuk menyimpan gambar vektor walaupun format EPS juga dapat berisi data bitmap.",
          style: TextStyle(
            color: Color(0xFF393939),
            wordSpacing: 1.2,
            height: 1.3,
          ),
        ),
      ],
    );
  }
}

class PDF extends StatelessWidget {
  const PDF({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "PDF",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w300,
            color: Color(0xFF393939),
          ),
        ),
        SizedBox(height: 5),
        Text(
          "format file yang cukup serbaguna, yang dapat berisi data apa saja termasuk halaman-halaman lengkap.",
          style: TextStyle(
            color: Color(0xFF393939),
            wordSpacing: 1.2,
            height: 1.3,
          ),
        ),
      ],
    );
  }
}

class pict extends StatelessWidget {
  const pict({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "PICT",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w300,
            color: Color(0xFF393939),
          ),
        ),
        SizedBox(height: 5),
        Text(
          "format file yang dapat berisi data bitmap maupun vektor, tetapi biasanya hanya dapat digunakan oleh komputer macintosh.",
          style: TextStyle(
            color: Color(0xFF393939),
            wordSpacing: 1.2,
            height: 1.3,
          ),
        ),
      ],
    );
  }
}
