import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:widget_tests/project/side_bar_collapse_status_provider.dart';

class SideBar extends StatefulWidget {
  const SideBar({Key? key}) : super(key: key);
  @override _SideBarState createState() => _SideBarState();
}
class _SideBarState extends State<SideBar> {

  late SideBarCollapseStatusProvider sideBarCollapseStatusProvider;
  final Color topBar = const Color(0xff3e4f5f);
  final Color mainColor = const Color(0xff465767);

  @override
  Widget build(BuildContext context) {

    sideBarCollapseStatusProvider = Provider.of<SideBarCollapseStatusProvider>(context);

    bool isExpanded(){
      return sideBarCollapseStatusProvider.isExpanded ? true : false;
    }

    return AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        width: sideBarCollapseStatusProvider.isExpanded ? 200 : 65,
        child: Column(
          children: [


            //Header
            Container(
              color: topBar,
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () => sideBarCollapseStatusProvider.changeCollapseStatusSideBar(),
                    child: const Icon(Icons.menu, size: 30,),
                    style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(15)
                    ),
                  ),
                ],
              ),
            ),


            //Body
            Container(
              color: mainColor,
              child: Column(
                children: [
                  CustomButton(
                      Icons.home,
                      "Home",
                      () {print("Home button");},
                      isExpanded()
                  ),
                  CustomButton(
                      Icons.account_balance_wallet,
                      "Wallets",
                      () {print("Wallets button");},
                      isExpanded()
                  ),
                  CustomButton(
                      Icons.credit_card_outlined,
                      "Cards",
                      () {print("Cards button");},
                      isExpanded()
                  ),
                ],
              ),
            ),
          ],
        )
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback? onPressed;
  final bool isVisible;

  const CustomButton(this.icon, this.text, this.onPressed, this.isVisible);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(

      ),
      onPressed: onPressed,
        child: Row(
            children: isVisible
            ?[Padding(padding: const EdgeInsets.all(5.0),
              child:Icon(icon, size: 25,)),
              Flexible(child: Text(text, overflow: TextOverflow.ellipsis,),)
            ]
            :[Icon(icon, size: 30,)

            ],
          ),
        );
  }
}
