import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:komputergrafis/app/routes/app_pages.dart';

import '../controllers/bitmap_karakteristik_controller.dart';

class BitmapKarakteristikView extends GetView<BitmapKarakteristikController> {
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
                          GestureDetector(
                            onTap: () => Get.toNamed(Routes.BITMAP),
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
                            onTap: () => Get.toNamed(Routes.BITMAP_JENIS),
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
          "Gambar yang menggunakan data bitmap akan menghasilkan bobot file yang besar. Sebagai contoh, sebuah gambar dengan standar warna CMYK berukuran A4 yang memiliki kualitas cetak menengah (medium) menghasilkan bobot file sebesar 40 MB. Dengan menggunakan kompresi dapat memperkecil bobot sebuah file.",
          style: TextStyle(
            color: Color(0xFF393939),
            wordSpacing: 1.2,
            height: 1.3,
          ),
        ),
        SizedBox(height: 10),
        Text(
          "Perbesaran dimensi gambar merupakan salah satu kekurangan jenis gambar bitmap ini. Begitu sebuah gambar diperbesar terlalu banyak, akan terlihat tidak natural dan pecah. Begitu juga dengan memperkecil sebuah gambar, akan memberikan dampak buruk seperti berkurangnya ketajaman gambar tersebut.",
          style: TextStyle(
            color: Color(0xFF393939),
            wordSpacing: 1.2,
            height: 1.3,
          ),
        ),
        SizedBox(height: 10),
        Text(
          "Bitmap cukup simpel untuk pencetakan selama printer yang digunakan memiliki memori yang cukup. Mesin cetak PostScript level 1 jaman dulu akan mengalami masalah ketika mendapatkan sebuah gambar (khususnya Line-art) yang dirotasi, tapi hardware dan software jaman sekarang dapat menangani berbagai efek manipulasi gambar apapun tanpa masalah.",
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
