// ignore_for_file: prefer_const_constructors

import 'package:flutter_practice/provider_example/provider/count.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class CartProvider extends StatefulWidget {
  const CartProvider({super.key});

  @override
  State<CartProvider> createState() => _CartProviderState();
}

class _CartProviderState extends State<CartProvider> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>MyCount())
      ],
      child: CartHelper(),
    );
  }
}


class CartHelper extends StatelessWidget {
  const CartHelper({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Provider practice')),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('${context.watch<MyCount>().count}', textScaleFactor: 3,),
          SizedBox(height: 20,),
          Divider(thickness: 2, height: 2, color: Colors.green,),
          

      ],),
      ),
      floatingActionButton: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        FloatingActionButton(onPressed: () =>context.read<MyCount>().decrement(), child: Icon(Icons.remove),),
        FloatingActionButton(onPressed: () =>context.read<MyCount>().reset(), child: Icon(Icons.exposure_zero),),
        FloatingActionButton(onPressed: ()=>context.read<MyCount>().increment(), child: Icon(Icons.add),),
      ],),
    );
  }
}