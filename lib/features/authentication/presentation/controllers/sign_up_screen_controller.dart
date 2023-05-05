import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_go_money_book/features/authentication/repositories/auth_repository.dart';
import 'package:riverpod_go_money_book/features/authentication/repositories/providers/auth_repository_provider.dart';

part 'sign_up_screen_controller.g.dart';

@riverpod
class SignUpScreenController extends _$SignUpScreenController {
  @override
  bool build() {
    _authRepository = ref.watch(authRepositoryProvider);
    return false;
  }

  late AuthRepository _authRepository;

  Future<void> createUser(String email, String password) async {
    state = true;
    try {
      await _authRepository.createUserWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      print(e);
    } finally {
      state = false;
    }
  }
}
