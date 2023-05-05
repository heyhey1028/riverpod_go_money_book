// stateful widget for sign in modal dialog with user name and password TextFormfields and text button to navigate to sign up screen.
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_go_money_book/core/app_router.dart';
import 'package:riverpod_go_money_book/features/authentication/presentation/controllers/sign_in_modal_controller.dart';

class SignInModal extends ConsumerStatefulWidget {
  const SignInModal({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignInModalState();
}

class _SignInModalState extends ConsumerState<SignInModal> {
  // global key for form.
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

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

  @override
  Widget build(BuildContext context) {
    print('signin modal build');
    final state = ref.watch(signInModalControllerProvider);
    print('state:$state');
    return AlertDialog(
      title: const Text('Sign in'),
      content: Form(
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
            TextButton(
              onPressed: () {
                GoRouter.of(context).push(AppRouterPaths.signUp);
              },
              child: const Text('Sign up'),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () async {
            if (_formKey.currentState!.validate()) {
              await ref.read(signInModalControllerProvider.notifier).signIn(
                    _userNameController.text,
                    _passwordController.text,
                  );
              if (mounted) {
                Navigator.of(context).pop();
              }
            }
          },
          child:
              state ? const CircularProgressIndicator() : const Text('Sign in'),
        ),
      ],
    );
  }
}
