import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override State<LoginScreen> createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {
  final email = TextEditingController(); final pin = TextEditingController();
  @override Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('Sign in')), body: Padding(padding: const EdgeInsets.all(24), child: Column(children: [
    TextField(controller: email, keyboardType: TextInputType.emailAddress, decoration: const InputDecoration(labelText: 'Gmail', border: OutlineInputBorder())),
    const SizedBox(height: 16), TextField(controller: pin, obscureText: true, maxLength: 4, keyboardType: TextInputType.number, decoration: const InputDecoration(labelText: '4-digit PIN', border: OutlineInputBorder())),
    const SizedBox(height: 12), SizedBox(width: double.infinity, child: FilledButton(onPressed: () {}, child: const Text('Sign in'))),
  ])));
  @override void dispose(){ email.dispose(); pin.dispose(); super.dispose(); }
}
