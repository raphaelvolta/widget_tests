import 'package:flutter/material.dart';

void main() {runApp(const MyApp());}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: App(title: 'Flutter Demo Home Page'),
    );
  }
}





//https://api.flutter.dev/flutter/widgets/PageView-class.html
//https://github.com/Santos-Enoque/flutter-web-admin-dashboard-ecommerce/blob/main/lib/main.dart



class App extends StatefulWidget {
  const App({Key? key, required this.title}) : super(key: key);
  final String title;
  @override State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int _counter = 0;
  void _doAction() {
    setState(() {_counter++;});
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        SideMenu(),
        MainSection()
      ],
    );
  }
}

class SideMenu extends StatelessWidget {const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      child: Column(
        children: [

          ElevatedButton(
            child: const Icon(Icons.architecture),
            onPressed: () => {
              Navigator.pushReplacement<void, void>(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => Screen1(),
                ),
              )
            },
          ),

          ElevatedButton(
            child: const Icon(Icons.anchor),
            onPressed: () => {
              Navigator.pushReplacement<void, void>(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => Screen2(),
                ),
              )
            },
          )

        ],
      ),
    );
  }
}
class MainSection extends StatelessWidget {
  const MainSection({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 400,
          width: 400,
        ),
        Container(
            height: 400,
            width: 400,
            child: MaterialApp(
                debugShowCheckedModeBanner: false,
                theme: ThemeData(
                  primaryColor: Color.fromRGBO(86, 86, 86, 1.00),
                ),
                initialRoute: '/W1',
                routes: {
                  '/W1': (context) => Screen1(),
                  '/W2': (context) => Screen2(),
                })),
      ],
    );
  }
}

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      width: 850,
      child: const Text("This is Screen1"),
    );
  }
}
class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.indigo,
      width: 850,
      child: const Text("This is Screen2"),
    );
  }
}