// router class using go_router packages

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_go_money_book/core/widgets/app_scaffold.dart';
import 'package:riverpod_go_money_book/features/budgets/budget_screen.dart';
import 'package:riverpod_go_money_book/features/overview/views/total_spending_screen.dart';
import 'package:riverpod_go_money_book/features/profile/profile_screen.dart';
import 'package:riverpod_go_money_book/features/spendings/views/register_spending_screen.dart';
import 'package:riverpod_go_money_book/features/spendings/views/spending_screen.dart';
import 'package:riverpod_go_money_book/features/spendings/views/spendings_list_screen.dart';

// AppRouterPaths class
class AppRouterPaths {
  static const totalSpendings = '/total-spendings';
  static const spendingsList = '/spendings-list';
  static const registerSpending = '/register-spending';
  static const budget = '/budget';
  static const profile = '/profile';
  static const signUp = '/sign-up';
}

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

final approuter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/total-spendings',
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) => AppScaffold(body: child),
      routes: <RouteBase>[
        GoRoute(
          path: AppRouterPaths.totalSpendings,
          builder: (context, state) => const TotalSpendingScreen(),
        ),
        GoRoute(
          path: AppRouterPaths.spendingsList,
          builder: (context, state) => const SpendingsListScreen(),
          routes: [
            GoRoute(
              path: ':id',
              parentNavigatorKey: _rootNavigatorKey,
              builder: (context, state) => const SpendingScreen(),
            ),
          ],
        ),
        GoRoute(
          path: AppRouterPaths.budget,
          builder: (context, state) => const BudgetScreen(),
        ),
        GoRoute(
          path: AppRouterPaths.profile,
          builder: (context, state) => const ProfileScreen(),
        ),
      ],
    ),
    GoRoute(
      path: AppRouterPaths.registerSpending,
      parentNavigatorKey: _rootNavigatorKey,
      pageBuilder: (context, state) => CustomTransitionPage(
        key: state.pageKey,
        child: const RegisterSpendingScreen(),
        transitionDuration: const Duration(milliseconds: 200),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return SlideTransition(
            position: Tween<Offset>(begin: const Offset(0, 1), end: Offset.zero)
                .animate(animation),
            child: child,
          );
        },
      ),
    ),
    GoRoute(
      path: AppRouterPaths.signUp,
      builder: (context, state) => const ProfileScreen(),
    ),
  ],
);
