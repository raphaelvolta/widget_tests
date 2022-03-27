import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  ListTile createTile(String name, Icon icon, BuildContext context) {
    return ListTile(
        leading: icon,
        title: Text(name),
        onTap: () => Navigator.pushNamed(
              context,
              name,
            ));
  }

  @override
  Widget build(BuildContext context) {
    ListTile createTile(String name, Icon icon) {
      return ListTile(
        leading: icon,
        title: Text(name),
        onTap: () => Navigator.pushNamed(
          context,
          name,
        ),
      );
    }

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Drawer Header'),
          ),
          createTile('Wallets',const Icon(Icons.account_balance_wallet_rounded)),
          createTile('Cards',const Icon(Icons.credit_card)),
          createTile('Wallets',const Icon(Icons.attach_money)),
          createTile('Wallets',const Icon(Icons.local_offer)),
          createTile('Wallets',const Icon(Icons.account_balance_wallet_rounded)),
          createTile('Wallets',const Icon(Icons.account_balance_wallet_rounded)),
        ],
      ),
    );
  }
}
