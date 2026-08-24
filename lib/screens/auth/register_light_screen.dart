import 'package:flutter/material.dart';

class RegisterLightScreen extends StatelessWidget {
  const RegisterLightScreen({super.key});
  @override Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('LIGHT registration')), body: Padding(padding: const EdgeInsets.all(24), child: Column(children: [
    const Text('Create a LIGHT account with Gmail.'), const SizedBox(height: 20),
    const TextField(keyboardType: TextInputType.emailAddress, decoration: InputDecoration(labelText: 'Gmail', border: OutlineInputBorder())),
    const SizedBox(height: 16), SizedBox(width: double.infinity, child: FilledButton(onPressed: null, child: Text('Continue'))),
  ])));
}
