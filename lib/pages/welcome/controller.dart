import 'package:get/get.dart';
import 'package:test11/common/routes/names.dart';
import 'package:test11/pages/welcome/state.dart';

class WelcomeController extends GetxController {
  final state = WelcomeState();
  WelcomeController();
  changePage(int index) async {
    state.index.value = index;
  }

  handleSignIN() {
    Get.offAndToNamed(AppRoutes.SIGN_IN);
  }
}
