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
          createTile('Settlements',const Icon(Icons.attach_money)),
          createTile('Tags',const Icon(Icons.local_offer)),
          createTile('Filtering',const Icon(Icons.filter_alt_sharp)),
          createTile('Sallary',const Icon(Icons.savings)),
          createTile('Input',const Icon(Icons.input)),
          createTile('About',const Icon(Icons.info)),
        ],
      ),
    );
  }
}
