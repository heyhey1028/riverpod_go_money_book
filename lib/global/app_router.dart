// router class using go_router packages

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_go_money_book/features/budgets/budget_screen.dart';
import 'package:riverpod_go_money_book/features/profile/profile_screen.dart';
import 'package:riverpod_go_money_book/features/register_spending/register_spending_screen.dart';
import 'package:riverpod_go_money_book/features/spendings_list/spending/spending_screen.dart';
import 'package:riverpod_go_money_book/features/spendings_list/spendings_list_screen.dart';
import 'package:riverpod_go_money_book/features/total_spendings/total_spending_screen.dart';
import 'package:riverpod_go_money_book/global/widgets/app_scaffold.dart';

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
      builder: (context, state) => const RegisterSpendingScreen(),
    ),
    GoRoute(
      path: AppRouterPaths.signUp,
      builder: (context, state) => const ProfileScreen(),
    ),
  ],
);
