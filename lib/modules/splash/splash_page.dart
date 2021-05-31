import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:split_it/theme/app_theme.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void initializeFirebase() async {
    try {
      await Firebase.initializeApp();
      await Future.delayed(
        Duration(seconds: 2),
      );
      Navigator.pushReplacementNamed(context, "/login");
    } catch (error) {
      print(error);
      Navigator.pushReplacementNamed(context, "/error");
    }
  }

  @override
  void initState() {
    initializeFirebase();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(24),
        decoration: BoxDecoration(gradient: AppTheme.gradients.background),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Opacity(
                  opacity: 0.2,
                  child: Image.asset(
                    "assets/images/rectangle_left.png",
                    width: 198,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              children: [
                Opacity(
                  opacity: 0.2,
                  child: Image.asset(
                    "assets/images/rectangle_left.png",
                    width: 114,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 81,
            ),
            Image.asset(
              "assets/images/logo.png",
              width: 128,
            ),
            SizedBox(
              height: 81,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Opacity(
                  opacity: 0.2,
                  child: Image.asset(
                    "assets/images/rectangle_right.png",
                    width: 114,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Opacity(
                  opacity: 0.2,
                  child: Image.asset(
                    "assets/images/rectangle_right.png",
                    width: 198,
                  ),
                ),
              ],
            ),
          ],
        ),
        // child: Center(
        //     child: Image.asset(
        //   "assets/images/logo.png",
        //   width: 128,
        // ),),
      ),
    );
  }
}
