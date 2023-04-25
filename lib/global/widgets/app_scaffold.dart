// statelesswidget with scaffold which receives body as parameter and has bottom navigation bar.
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_go_money_book/features/register_spending/register_spending_screen.dart';
import 'package:riverpod_go_money_book/global/app_router.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    super.key,
    required this.body,
  });

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body,
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.blue,
        currentIndex: getCurrentIndex(context),
        onTap: (i) => onTapTab(context, i),
        items: const [
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.home),
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.list),
            icon: Icon(Icons.list),
            label: 'List',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.money),
            icon: Icon(Icons.money),
            label: 'Budget',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.person),
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder: (_, __, ___) => const RegisterSpendingScreen(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) =>
                      FadeTransition(opacity: animation, child: child),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  // method that receives BuildContext as an parameter and returns index by identifying the location from gorouter context
  int getCurrentIndex(BuildContext context) {
    final GoRouter route = GoRouter.of(context);
    final String location = route.location;
    switch (location) {
      case AppRouterPaths.totalSpendings:
        return 0;
      case AppRouterPaths.spendingsList:
        return 1;
      case AppRouterPaths.budget:
        return 2;
      case AppRouterPaths.profile:
        return 3;
      default:
        return 0;
    }
  }

  // method that receives BuildContext and index as parameters and navigates to the location by index using go_router
  // form of navigation: GoRouter.of(context).go('/a');
  void onTapTab(BuildContext context, int index) {
    switch (index) {
      case 0:
        GoRouter.of(context).go(AppRouterPaths.totalSpendings);
        break;
      case 1:
        GoRouter.of(context).go(AppRouterPaths.spendingsList);
        break;
      case 2:
        GoRouter.of(context).go(AppRouterPaths.budget);
        break;
      case 3:
        GoRouter.of(context).go(AppRouterPaths.profile);
        break;
      default:
        GoRouter.of(context).go(AppRouterPaths.totalSpendings);
    }
  }
}
