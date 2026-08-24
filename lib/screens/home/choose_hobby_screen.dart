import 'package:flutter/material.dart';
class ChooseHobbyScreen extends StatelessWidget { const ChooseHobbyScreen({super.key}); @override Widget build(BuildContext c)=>Scaffold(appBar: AppBar(title: const Text('Choose hobby')), body: ListView(padding: const EdgeInsets.all(16), children: ['Music','Cooking','Comedy'].map((h)=>Card(child: ListTile(title: Text(h), onTap: (){}))).toList())); }
