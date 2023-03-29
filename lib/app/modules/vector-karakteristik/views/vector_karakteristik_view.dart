import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:komputergrafis/app/routes/app_pages.dart';

import '../controllers/vector_karakteristik_controller.dart';

class VectorKarakteristikView extends GetView<VectorKarakteristikController> {
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
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 11),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFF264653),
                            ),
                            height: 29,
                            child: Center(
                              child: Text(
                                "Karakteristik",
                                style: TextStyle(color: Colors.white),
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
                                  border: Border.all(
                                    color: Color(0xFF264653),
                                  )),
                              height: 29,
                              child: Center(
                                child: Text(
                                  "Format File",
                                  style: TextStyle(
                                    color: Color(0xFF264653),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
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
      children: [
        Text(
          "Gambar vektor biasanya memiliki bobot file yang cukup kecil karena hanya berisi data mengenai bezier curves yang membentuk sebuah gambar. Format file EPS seringkali digunakan untuk menyimpan gambar vektor yang dapat memberikan penampilan gambar bitmap (bitmap preview image) dalam data bezier. Bobot file dari gambar penampilan biasanya lebih besar dari data bezier-nya sendiri.",
          style: TextStyle(
            color: Color(0xFF393939),
            wordSpacing: 1.2,
            height: 1.3,
          ),
        ),
        SizedBox(height: 10),
        Text(
          "Dimensi gambar vektor biasanya dapat diubah tanpa mengurangi kualitas gambarnya sendiri. Hal ini yang menjadikannya ideal dalam pembuatan logo perusahaan, peta/denah, atau objek-objek lain yang seringkali membutuhkan perubahan skala/dimensi. Perlu diperhatikan, tidak semua gambar vektor dapat diubah skalanya sesuka Anda:",
          style: TextStyle(
            color: Color(0xFF393939),
            wordSpacing: 1.2,
            height: 1.3,
          ),
        ),
        SizedBox(height: 10),
        Container(
          width: Get.width,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: 10),
              Text(
                "•",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Container(
                  child: Text(
                      "Gambar hanya dapat diubah skalanya hingga 20 persen lebih besar atau lebih kecil."),
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
              SizedBox(width: 10),
              Text(
                "•",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Container(
                  child: Text(
                      "Garis-garis tipis dapat menghilang jika gambar vektor diperkecil terlalu banyak"),
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
              SizedBox(width: 10),
              Text(
                "•",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Container(
                  child: Text(
                      "Kesalahan-kesalahan kecil pada sebuah gambar dapat terlihat jelas ketika gambar diperbesar terlalu besar"),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 10),
        Text(
          "Cukup mudah untuk membuat sebuah gambar vektor, namun sulit untuk dibuatkan output-nya. Khususnya penggunaan tiles (objek-objek kecil yang dibuat berulang-ulang) dan efek lens pada Corel Draw dapat membuat file yang sangat kompleks.",
          style: TextStyle(
            color: Color(0xFF393939),
            wordSpacing: 1.2,
            height: 1.3,
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
