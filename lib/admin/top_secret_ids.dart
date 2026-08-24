import 'package:flutter/material.dart';
class TopSecretIds extends StatelessWidget { const TopSecretIds({super.key}); @override Widget build(BuildContext c)=>Scaffold(appBar: AppBar(title: const Text('Verified identities')), body: const Center(child: Text('Restricted admin view. Do not expose ID, selfie, or payment data to clients without authorization.'))); }
