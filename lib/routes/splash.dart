import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trainerr_trainee_app/controllers/splash_controller.dart';
import '../helpers/app_constants.dart' as constants;

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final SplashController _con = Get.put(SplashController());

  @override
  void initState() {
    super.initState();
    // Timer(const Duration(seconds: 8), () {
    //   _con.goToNextScreen();
    // });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage("assets/gif/splash.gif"),
                width: 180,
                height: 180,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                constants.trainerr,
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
