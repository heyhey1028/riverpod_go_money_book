import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_go_money_book/features/profile/controllers/providers/profile_screen_controller_provider.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(profileScreenControllerProvider);

    return Scaffold(
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('profile screen'),
          TextButton(
            onPressed: () async {
              await ref
                  .read(profileScreenControllerProvider.notifier)
                  .signOut();
            },
            child: state
                ? const CircularProgressIndicator()
                : const Text('Sign out'),
          )
        ],
      )),
    );
  }
}
