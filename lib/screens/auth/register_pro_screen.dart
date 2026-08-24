import 'package:flutter/material.dart';

class RegisterProScreen extends StatelessWidget {
  const RegisterProScreen({super.key});
  @override Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('PRO registration')), body: ListView(padding: const EdgeInsets.all(24), children: [
    const Text('PRO registration requires identity verification and M-Pesa verification.'), const SizedBox(height: 20),
    const TextField(decoration: InputDecoration(labelText: 'National ID number', border: OutlineInputBorder())), const SizedBox(height: 12),
    const TextField(keyboardType: TextInputType.phone, decoration: InputDecoration(labelText: 'M-Pesa phone number', border: OutlineInputBorder())), const SizedBox(height: 12),
    OutlinedButton.icon(onPressed: () {}, icon: const Icon(Icons.badge_outlined), label: const Text('Upload ID photo')),
    OutlinedButton.icon(onPressed: () {}, icon: const Icon(Icons.face_retouching_natural), label: const Text('Capture selfie')),
    const SizedBox(height: 16),
    const Text('Identity documents should be stored securely and accessed only by authorized administrators.', style: TextStyle(fontSize: 12)),
    const SizedBox(height: 16), FilledButton(onPressed: () {}, child: const Text('Submit verification')),
  ]));
}
