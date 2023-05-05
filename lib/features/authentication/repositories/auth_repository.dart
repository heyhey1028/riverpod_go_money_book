// abstract class for authentication repository

import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepository {
  User? get currentUser;
  Stream<User?> authStateChanges();
  Future<UserCredential> signInWithEmailAndPassword(
      {required String email, required String password});
  Future<UserCredential> createUserWithEmailAndPassword(
      {required String email, required String password});
  Future<void> signOut();
}
