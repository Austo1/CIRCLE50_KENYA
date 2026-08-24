import 'package:flutter/material.dart';
class DrawJudges extends StatelessWidget { const DrawJudges({super.key}); @override Widget build(BuildContext c)=>Scaffold(appBar: AppBar(title: const Text('Draw judges')), body: Center(child: FilledButton.icon(onPressed: (){}, icon: const Icon(Icons.shuffle), label: const Text('DRAW 5 JUDGES')))); }
