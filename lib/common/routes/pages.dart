import 'package:get/get.dart';
import 'package:test11/common/routes/names.dart';
import 'package:test11/pages/signin/bindings.dart';
import 'package:test11/pages/signin/view.dart';
import 'package:test11/pages/welcome/bindings.dart';
import 'package:test11/pages/welcome/view.dart';

class AppPages {
  static const INITIAL = AppRoutes.INITIAL;

  static final List<GetPage> routes = [
    GetPage(
      name: AppRoutes.INITIAL,
      page: () => const WelcomePage(),
      binding: WelcomeBinding(),
    ),
     GetPage(
      name: AppRoutes.SIGN_IN,
      page: () => const SignInPage(),
      binding: SignINBinding(),
    ),
  ];
}
