import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_go_money_book/features/authentication/repositories/auth_repository.dart';
import 'package:riverpod_go_money_book/features/authentication/repositories/providers/auth_repository_provider.dart';

part 'profile_screen_controller_provider.g.dart';

@riverpod
class ProfileScreenController extends _$ProfileScreenController {
  @override
  bool build() {
    _authRepository = ref.watch(authRepositoryProvider);
    return false;
  }

  late AuthRepository _authRepository;

  Future<void> signOut() async {
    state = true;
    try {
      await Future.delayed(
          const Duration(seconds: 1), () => print('sign out success'));
      await _authRepository.signOut();
    } finally {
      state = false;
    }
  }
}
