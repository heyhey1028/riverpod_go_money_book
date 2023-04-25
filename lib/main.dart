import 'package:flutter/material.dart';
import 'package:riverpod_go_money_book/global/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // override build method with method that returns MaterialApp using router constructor and take in AppRouter
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerConfig: approuter,
    );
  }
}
