
import 'package:flutter/material.dart';
import 'package:widget_tests/with_sidebar/screens/home.dart';
import 'package:widget_tests/with_sidebar/screens/wallet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: 'Home',
      routes: {
        'Home': (context) => const HomeScreen(),
        'Wallets': (context) => WalletScreen()
      },
    );
  }
}
