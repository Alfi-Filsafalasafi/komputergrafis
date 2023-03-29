import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:komputergrafis/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
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
                    ],
                  ),
                  SizedBox(height: 23),
                  Text(
                    "Mari Belajar",
                    style: TextStyle(
                        color: Color(0xFF393939),
                        fontWeight: FontWeight.w300,
                        fontSize: 24),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Komputer Grafis",
                    style: TextStyle(
                        color: Color(0xFF393939),
                        fontWeight: FontWeight.w300,
                        fontSize: 28),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: Get.width * 0.42,
                        height: 114,
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                          color: Color(0xFF0C88AE),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(40),
                              bottomLeft: Radius.circular(40),
                              bottomRight: Radius.circular(40),
                            ),
                          ),
                          child: GestureDetector(
                            onTap: () => Get.toNamed(Routes.VECTOR),
                            child: Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                Ink.image(
                                  image: AssetImage('assets/home/vector.png'),
                                  fit: BoxFit.cover,
                                  child: InkWell(
                                    onTap: () => Get.toNamed(Routes.VECTOR),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 25),
                                  child: Text(
                                    'Vector',
                                    style: TextStyle(
                                      color: Color(0xFF202020),
                                      fontWeight: FontWeight.w300,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: Get.width * 0.42,
                        height: 114,
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(40),
                              bottomLeft: Radius.circular(40),
                            ),
                          ),
                          child: GestureDetector(
                            onTap: () => Get.toNamed(Routes.BITMAP),
                            child: Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                Ink.image(
                                  image: AssetImage('assets/home/bitmap.png'),
                                  fit: BoxFit.cover,
                                  child: InkWell(
                                    onTap: () => Get.toNamed(Routes.BITMAP),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 25),
                                  child: Text(
                                    'Bitmap',
                                    style: TextStyle(
                                      color: Color(0xFF202020),
                                      fontWeight: FontWeight.w300,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: Get.width,
                    height: 134,
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(60)),
                      ),
                      child: GestureDetector(
                        onTap: () => Get.toNamed(Routes.PERBEDAAN),
                        child: Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            Ink.image(
                              image: AssetImage('assets/home/perbedaan.png'),
                              fit: BoxFit.cover,
                              child: InkWell(
                                onTap: () => Get.toNamed(Routes.PERBEDAAN),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 55,
                                  ),
                                  Text(
                                    'Perbedaan',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 20,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'Vector dan Bitmap',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )),
          ),
        ],
      ),
    );
  }
}
