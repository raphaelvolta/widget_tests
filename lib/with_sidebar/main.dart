import 'package:estudos_em_partes/with_sidebar/screens/card_view.dart';
import 'package:estudos_em_partes/with_sidebar/screens/home_view.dart';
import 'package:estudos_em_partes/with_sidebar/screens/settlement_view.dart';
import 'package:estudos_em_partes/with_sidebar/screens/tag_view.dart';
import 'package:estudos_em_partes/with_sidebar/screens/wallet_view.dart';
import 'package:flutter/material.dart';

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
        'Home': (context) => const HomeView(),
        'Wallets': (context) => const WalletView(),
        'Cards': (context) => const CardView(),
        'Settlements': (context) => const SettlementView(),
        'Tags': (context) => const TagView(),
        'Filters': (context) => const CardView(),
        'Salary': (context) => const CardView(),
        'Input': (context) => const CardView(),
        'About': (context) => const CardView(),
      },
    );
  }
}
