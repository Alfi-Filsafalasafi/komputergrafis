import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/perbedaan_controller.dart';

class PerbedaanView extends GetView<PerbedaanController> {
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
                      "Perbedaan",
                      style: TextStyle(
                          color: Color(0xFF393939),
                          fontWeight: FontWeight.w300,
                          fontSize: 26),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Vector dan Bitmap",
                      style: TextStyle(
                          color: Color(0xFF393939),
                          fontWeight: FontWeight.w300,
                          fontSize: 26),
                    ),
                    SizedBox(height: 20),
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
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            vector(),
            Container(
              color: Color(0xFF554BFE).withOpacity(0.5),
              width: 2,
              height: 300,
            ),
            bitmap(),
          ],
        ),
        SizedBox(height: 20),
      ],
    );
  }
}

class vector extends StatelessWidget {
  const vector({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.404,
      child: Column(
        children: [
          Center(
            child: Text(
              "Vector",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: Get.width,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "1.",
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                  ),
                ),
                SizedBox(width: 5),
                Expanded(
                  child: Container(
                    child: Text(
                        "Kurang dapat menampilkan gambar dan gradasi warna secara realistis"),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 5),
          Container(
            width: Get.width,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "2.",
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                  ),
                ),
                SizedBox(width: 5),
                Expanded(
                  child: Container(
                    child: Text(
                        "Bersifat scalable. artinya kita dapat memperbesar atau memperkecil tanpa mengubah kualitasnya"),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 5),
          Container(
            width: Get.width,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "3.",
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                  ),
                ),
                SizedBox(width: 5),
                Expanded(
                  child: Container(
                    child: Text("Tersusun oleh garis dan kurva"),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 5),
          Container(
            width: Get.width,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "4.",
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                  ),
                ),
                SizedBox(width: 5),
                Expanded(
                  child: Container(
                    child: Text(
                        "Kualitas grafik tidak bergantung dari banyaknya piksel"),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 5),
          Container(
            width: Get.width,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "5.",
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                  ),
                ),
                SizedBox(width: 5),
                Expanded(
                  child: Container(
                    child: Text(
                        "Mempunyai warna-warna yang solid, cocok untuk bentuk gambar sederhana, seperti logo, kartun, dsb"),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class bitmap extends StatelessWidget {
  const bitmap({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.404,
      child: Column(
        children: [
          Center(
            child: Text(
              "Bitmap",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: Get.width,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 5),
                Text(
                  "1.",
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                  ),
                ),
                SizedBox(width: 5),
                Expanded(
                  child: Container(
                    child: Text(
                        "Mampu menangkap nuansa warna dan bentuk yang natural"),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 5),
          Container(
            width: Get.width,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 5),
                Text(
                  "2.",
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                  ),
                ),
                SizedBox(width: 5),
                Expanded(
                  child: Container(
                    child: Text(
                        "Gambar kurang jelas jika diperbesar (menjadi kabur dan pecah)"),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 5),
          Container(
            width: Get.width,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 5),
                Text(
                  "3.",
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                  ),
                ),
                SizedBox(width: 5),
                Expanded(
                  child: Container(
                    child: Text("Terdiri atas titik/dot"),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 5),
          Container(
            width: Get.width,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 5),
                Text(
                  "4.",
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                  ),
                ),
                SizedBox(width: 5),
                Expanded(
                  child: Container(
                    child: Text(
                        "Kualitas grafis bergantung dari banyaknya piksel"),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 5),
        ],
      ),
    );
  }
}
