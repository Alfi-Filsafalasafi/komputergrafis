import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:komputergrafis/app/routes/app_pages.dart';

import '../controllers/bitmap_formatfile_controller.dart';

class BitmapFormatfileView extends GetView<BitmapFormatfileController> {
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
                                color: Colors.white,
                                border: Border.all(
                                  color: Color(0xFF264653),
                                ),
                              ),
                              height: 29,
                              child: Center(
                                child: Text(
                                  "Jenis-Jenis",
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
                      "Gambar dengan format data bitmap dapat disimpan dalam berbagai macam format file, antara lain:",
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
        bmp(),
        SizedBox(height: 15),
        EPS(),
        SizedBox(height: 15),
        GIF(),
        SizedBox(height: 15),
        jpeg(),
        SizedBox(height: 15),
        pict(),
        SizedBox(height: 15),
        tiff(),
        SizedBox(height: 30),
      ],
    );
  }
}

class bmp extends StatelessWidget {
  const bmp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "BMP",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w300,
            color: Color(0xFF393939),
          ),
        ),
        SizedBox(height: 5),
        Text(
          "format file yang terbatas, tidak cocok digunakan untuk cetak",
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
          "format file yang fleksibel, yang dapat berisi gambar bitmap maupun vektor.",
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

class GIF extends StatelessWidget {
  const GIF({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "GIF",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w300,
            color: Color(0xFF393939),
          ),
        ),
        SizedBox(height: 5),
        Text(
          "biasanya digunakan untuk grafis-grafis di internet.",
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

class jpeg extends StatelessWidget {
  const jpeg({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "JPEG",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w300,
            color: Color(0xFF393939),
          ),
        ),
        SizedBox(height: 5),
        Text(
          "atau juga format file JFIF, biasa digunakan sebagai grafik atau gambar di internet karena memiliki tingkat ketajaman gambar yang dapat mempengaruhi bobot file",
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
          "format file yang dapat berisi gambar bitmap maupun vektor, tetapi biasanya file ini hanya digunakan oleh komputer Macintosh dan tidak terlalu cocok untuk cetak",
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

class tiff extends StatelessWidget {
  const tiff({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "TIFF",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w300,
            color: Color(0xFF393939),
          ),
        ),
        SizedBox(height: 5),
        Text(
          "merupakan format file bitmap yang paling populer untuk cetak",
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
