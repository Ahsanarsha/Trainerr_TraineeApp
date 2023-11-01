import 'package:get/get.dart';
import 'package:trainerr_trainee_app/routes/login.dart';
// import '../repositories/user_repo.dart' as user_repo;

class SplashController extends GetxController {
  // go to next screen
  // after splash screen
  Future<void> goToNextScreen() async {
    Get.offAll(const LoginPage());
    // user_repo.getCurrentUser().then((User _user) {
    //   if (_user.authToken.isNotEmpty) {
    // Get.offAllNamed('/BottomNavPage/0');
    //   } else {
    // Get.offAll(
    //   const LoginPage(),
    //   transition: Transition.rightToLeft,
    //    );
    //    }
    //   }).onError((error, stackTrace) {
    //   print("Splash Controller Error: $error");
    //   }).whenComplete(() {});
    //  );
  }
}
