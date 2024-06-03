import 'package:get/get.dart';
import '../../../src/res/routes/routes.dart';
import '../../../src/view/home%20page/home_page.dart';
import '../../../src/view/sign_in/sign_in.dart';
import '../../../src/view/sign_up/sign_up.dart';
import '../../../src/view/splash/splash_screen.dart';

class AppRoutes{
  static List<GetPage> routes() {
    return [
      GetPage(name: Routes.splashScreen, page: () => const SplashScreen()),
      GetPage(name: Routes.signUpScreen, page: () => const SignUp()),
      GetPage(name: Routes.signInScreen, page: () => const SignIn()),
      GetPage(name: Routes.homePage, page: () => const HomePage()),
    ];
  }
}