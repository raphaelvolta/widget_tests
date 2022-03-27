import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:widget_tests/provider_test/custom_provider_storage.dart';


// VIDEO de provider: https://www.youtube.com/watch?v=xDdAXmAUt6c

void main() {
  runApp(
      ChangeNotifierProvider(
        create: (context) => CustomProviderStorage(),
        child: const MyApp(),
      )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  late CustomProviderStorage customProviderStorage;

  void _incrementCounter() {
    setState(() {_counter++;});
  }

  @override
  Widget build(BuildContext context) {
    customProviderStorage = Provider.of<CustomProviderStorage>(context);
    
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Reading value from provider: ' + customProviderStorage.selectedPage),
            const Text('You have pushed the button this many times:'),
            Text('$_counter', style: Theme.of(context).textTheme.headline4),
            FloatingActionButton(
              onPressed: () {
                customProviderStorage.changeSelectedPage("Novo valor");
              },
              tooltip: 'Change ',
              child: const Icon(Icons.plus_one),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),

    );
  }
}
