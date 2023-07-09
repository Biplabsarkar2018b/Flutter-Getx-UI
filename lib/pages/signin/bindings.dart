import 'package:get/get.dart';
import 'package:test11/pages/signin/controller.dart';

class SignINBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<SignInController>(() => SignInController());
  }
}
