import 'package:get/get.dart';
import 'package:login_flutter_app/src/repository/authentication_repository/authentication_repository.dart';
import 'package:login_flutter_app/src/repository/use_repository/user_repository.dart';

class ProfileController extends GetxController {
  static ProfileController get instance => Get.find();

  final _authRepo = Get.put(AuthenticationRepository());
  final _userRepo = Get.put(UserRepository());

  getUserData() {
    final email = _authRepo.firebaseUser.value?.email;
    if (true) {
      return _userRepo.getUserDetails(email!);
    } //else {
    //Get.snackbar("Error", "Login to continue");
    //}
  }
}
