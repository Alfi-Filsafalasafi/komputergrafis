import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            Center(
              child: Container(
                child: Image.asset("assets/icon/logo-splash.png"),
              ),
            ),
            SizedBox(height: 25),
            Text(
              "Komputer Grafis",
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 24,
                color: Color(0xFF2b2b2b),
              ),
            ),
            SizedBox(height: 30),
            Text(
              "Di Susun Oleh",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Color(0xFF2b2b2b),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Deni Setiyowati, S.Kom",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Color(0xFF2b2b2b),
              ),
            ),
            SizedBox(height: 6),
            Text(
              "NIP. 19831020 200902 2 007",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
