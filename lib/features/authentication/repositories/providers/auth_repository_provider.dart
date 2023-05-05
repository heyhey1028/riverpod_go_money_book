import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_go_money_book/features/authentication/repositories/auth_repository.dart';
import 'package:riverpod_go_money_book/features/authentication/repositories/firebase_auth_repository.dart';

part 'auth_repository_provider.g.dart';

@riverpod
AuthRepository authRepository(AuthRepositoryRef ref) {
  return FirebaseAuthRepository(FirebaseAuth.instance);
}
