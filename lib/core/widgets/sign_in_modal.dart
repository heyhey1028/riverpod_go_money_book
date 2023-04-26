// stateful widget for sign in modal dialog with user name and password TextFormfields and text button to navigate to sign up screen.
import 'package:flutter/material.dart';

class SignInModal extends StatefulWidget {
  const SignInModal({super.key});

  @override
  State<SignInModal> createState() => _SignInModalState();
}

class _SignInModalState extends State<SignInModal> {
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
                // Navigator.of(context).push<void>(
                //   MaterialPageRoute(
                //     builder: (context) => const SignUpScreen(),
                //   ),
                // );
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
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              Navigator.of(context).pop();
            }
          },
          child: const Text('Sign in'),
        ),
      ],
    );
  }
}
