import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:widget_tests/project/screen_change_provider.dart';
import 'package:widget_tests/project/side_bar.dart';
import 'package:widget_tests/project/side_bar_collapse_status_provider.dart';

// void main() {
//   runApp(
//     MultiProvider(
//         providers: [
//           Provider<ScreenChangeProvider>(create: (_) => ScreenChangeProvider()),
//           Provider<SideBarCollapseStatusProvider>(create: (_) => SideBarCollapseStatusProvider()),
//         ],
//         child: const App()
//     )
//   );
// }

void main() {
  runApp(
      ChangeNotifierProvider(
          create: (_) => SideBarCollapseStatusProvider(),
          child: App()
      )
  );
}

class App extends StatelessWidget {const App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Basic(),
      theme: ThemeData(
      ),
    );
  }
}

class Basic extends StatelessWidget {const Basic({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.indigoAccent,
      child: Row(
        children: const[
          SideBar(),
          ScreenSelector()
        ],
      ),
    );
  }
}

class ScreenSelector extends StatelessWidget {const ScreenSelector({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.green
      ),
    );
  }
}
