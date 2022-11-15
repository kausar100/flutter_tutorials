import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class ProviderMainPage extends StatefulWidget {
  const ProviderMainPage({super.key});

  @override
  State<ProviderMainPage> createState() => _ProviderMainPageState();
}

class _ProviderMainPageState extends State<ProviderMainPage> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: ((context) => CustomCounter()), child: const Helper());
  }
}

class CustomCounter extends ChangeNotifier {
  int value = 0;
  void increment() {
    value += 1;
    notifyListeners();
  }
}

class Helper extends StatelessWidget {
  const Helper({super.key});

  @override
  Widget build(BuildContext context) {
    final providerData = Provider.of<CustomCounter>(context);
    return Scaffold(
      body: Center(
          child: Text(
        providerData.value.toString(),
        textScaleFactor: 3.0,
      )),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          providerData.increment();
        },
      ),
    );
    ;
  }
}
