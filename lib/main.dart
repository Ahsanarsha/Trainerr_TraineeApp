import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:trainerr_trainee_app/helpers/app_theme.dart';
import 'package:trainerr_trainee_app/routes/splash.dart';
import '../helpers/app_constants.dart' as constants;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  constants.connectionStatus.initialize();
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: constants.primaryColor));
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late AppTheme _appTheme;
  @override
  void initState() {
    super.initState();
    _appTheme = AppTheme();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: _appTheme.getAppLightTheme(),
      debugShowCheckedModeBanner: false,
      initialRoute: "/Splash",
      getPages: [
        GetPage(
            name: "/Splash",
            page: () {
              return const SplashScreen();
            }),
        // GetPage(
        //     name: "/BottomNavPage/:index",
        //     // parameters: {},
        //     page: () {
        //       return BottomNavigationPage();
        //     })
      ],
    );
  }
}
