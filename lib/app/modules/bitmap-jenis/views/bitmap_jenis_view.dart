import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:komputergrafis/app/routes/app_pages.dart';

import '../controllers/bitmap_jenis_controller.dart';

class BitmapJenisView extends GetView<BitmapJenisController> {
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
                          GestureDetector(
                            onTap: () =>
                                Get.toNamed(Routes.BITMAP_KARAKTERISTIK),
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
                            onTap: () => Get.toNamed(Routes.BITMAP_JENIS),
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 11),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFF264653),
                              ),
                              height: 29,
                              child: Center(
                                child: Text(
                                  "Jenis-Jenis",
                                  style: TextStyle(color: Colors.white),
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
                                  "Aksesoris",
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        lineart(),
        SizedBox(height: 15),
        grayscale(),
        SizedBox(height: 15),
        multitones(),
        SizedBox(height: 15),
        fullcolor(),
        SizedBox(height: 30),
      ],
    );
  }
}

class lineart extends StatelessWidget {
  const lineart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "1) Line-art",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w300,
            color: Color(0xFF393939),
          ),
        ),
        SizedBox(height: 10),
        Text(
          "Merupakan gambar yang hanya terdiri dari dua warna, biasanya hitam dan putih. Biasanya gambar jenis ini dijadikan gambar bitmap karena komputer hanya menggunakan 1 bit (warna hitam yang membentuk gambar, warna putih sebagai latar) untuk mendefinisikan masing-masing pixel-nya.",
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

class grayscale extends StatelessWidget {
  const grayscale({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "2) Grayscale Images",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w300,
            color: Color(0xFF393939),
          ),
        ),
        SizedBox(height: 10),
        Text(
          "Yang terdiri dari bermacam warna abu-abu dalam menghasilkan warna hitam dan putih.",
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

class multitones extends StatelessWidget {
  const multitones({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "3) Multitones",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w300,
            color: Color(0xFF393939),
          ),
        ),
        SizedBox(height: 10),
        Text(
          "Terdiri dari dua warna atau lebih. Gambar multitones yang biasa digunakan adalah duotones, yang biasanya terdiri dari paduan warna hitam dengan warna khusus (Pantone colour). Warna yang digunakan pada gambar di atas adalah paduan dari warna hitam dengan Pantone Warm Red.",
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

class fullcolor extends StatelessWidget {
  const fullcolor({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "4) Full Colour Images",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w300,
            color: Color(0xFF393939),
          ),
        ),
        SizedBox(height: 10),
        Text(
          "Merupakan gambar yang memiliki warna yang tampak realistis. Informasi warna dijelaskan menggunakan jenis-jenis standar warna seperti RGB, CMYK atau Lab.",
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
