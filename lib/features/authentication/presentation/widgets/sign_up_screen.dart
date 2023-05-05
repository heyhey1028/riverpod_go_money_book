import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_go_money_book/features/authentication/presentation/controllers/sign_up_screen_controller.dart';

// signup screen with email, password and password confirmation textformfields and sign up button.
class SignUpScreen extends ConsumerWidget {
  SignUpScreen({super.key});

  // global key for form.
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordConfirmationController =
      TextEditingController();

  // validator for user name field.
  String? _validateUserName(String? value) {
    if (value == null || value.isEmpty) {
      return 'User name is required';
    }
    return null;
  }

  // validator for password field.
  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }
    return null;
  }

  // validator for password confirmation field.
  String? _validatePasswordConfirmation(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password confirmation is required';
    }
    if (value != _passwordController.text) {
      return 'Password confirmation does not match';
    }
    return null;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(signUpScreenControllerProvider);
    final notifier = ref.read(signUpScreenControllerProvider.notifier);

    return Scaffold(
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                controller: _userNameController,
                decoration: const InputDecoration(
                  labelText: 'User name',
                ),
                validator: _validateUserName,
              ),
              TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(
                  labelText: 'Password',
                ),
                validator: _validatePassword,
              ),
              TextFormField(
                controller: _passwordConfirmationController,
                decoration: const InputDecoration(
                  labelText: 'Password confirmation',
                ),
                validator: _validatePasswordConfirmation,
              ),
              ElevatedButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    await notifier.createUser(
                        _userNameController.text, _passwordController.text);
                  }
                },
                child: state
                    ? const CircularProgressIndicator()
                    : const Text('Sign up'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
