import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_go_money_book/features/authentication/repositories/auth_repository.dart';
import 'package:riverpod_go_money_book/features/authentication/repositories/providers/auth_repository_provider.dart';

part 'sign_in_modal_controller.g.dart';

@riverpod
class SignInModalController extends _$SignInModalController {
  @override
  bool build() {
    _authRepository = ref.watch(authRepositoryProvider);
    return false;
  }

  late AuthRepository _authRepository;

  Future<void> signIn(String email, String password) async {
    state = true;
    try {
      await Future.delayed(
          const Duration(seconds: 1), () => print('sign in success'));
      await _authRepository.signInWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      print(e);
    } finally {
      state = false;
    }
  }
}
