import 'package:flutter/material.dart';
import 'package:widget_tests/with_sidebar/services/wallet_service.dart';


class WalletView extends StatefulWidget {
  const WalletView({Key? key}) : super(key: key);

  @override
  _WalletViewState createState() => _WalletViewState();
}

class _WalletViewState extends State<WalletView> {

  List data;

  final WalletService walletService = WalletService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Wallets"),
      ),

      body: Container(
        color: Colors.blueGrey,
        child: Column(
          children: [

            Flexible(
              flex: 1,
              child: Row(
                children: [

                  const Flexible(
                    child: TextField(),
                    flex: 5,
                  ),

                  Flexible(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("Add"),
                    ),
                    flex: 1,
                  ),

                ],
              ),
            ),

            Flexible(
              flex: 4,
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(items[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
