import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_go_money_book/features/total_spendings/total_spending_screen.dart';

class RegisterSpendingScreen extends ConsumerWidget {
  const RegisterSpendingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Register Spending'),
          leading: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () => Navigator.pop(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => const TotalSpendingScreen(),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) =>
                        FadeTransition(opacity: animation, child: child),
              ),
            ),
          )),
      body: const Center(
        child: Text('register spending screen'),
      ),
    );
  }
}
