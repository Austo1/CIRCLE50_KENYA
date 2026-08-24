import 'package:flutter/material.dart';

void main() => runApp(const Circle50App());

class Circle50App extends StatelessWidget {
  const Circle50App({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
    title: 'CIRCLE 50 Kenya',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF087F23)), useMaterial3: true),
    home: const LandingScreen(),
  );
}

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
    body: Center(child: Padding(padding: const EdgeInsets.all(24), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      const Icon(Icons.groups_rounded, size: 90, color: Color(0xFF087F23)),
      const SizedBox(height: 18),
      Text('CIRCLE 50', style: Theme.of(context).textTheme.displaySmall?.copyWith(fontWeight: FontWeight.bold)),
      const Text('KENYA', style: TextStyle(letterSpacing: 5, fontWeight: FontWeight.w600)),
      const SizedBox(height: 12),
      const Text('Community-powered creative discovery and voting.', textAlign: TextAlign.center),
      const SizedBox(height: 30),
      FilledButton.icon(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const HobbyScreen())), icon: const Icon(Icons.play_arrow), label: const Text('Get Started')),
    ]))),
  );
}

class HobbyScreen extends StatelessWidget {
  const HobbyScreen({super.key});
  @override
  Widget build(BuildContext context) {
    const hobbies = ['Music', 'Cooking', 'Comedy'];
    return Scaffold(appBar: AppBar(title: const Text('Choose your hobby')), body: ListView.builder(padding: const EdgeInsets.all(20), itemCount: hobbies.length, itemBuilder: (_, i) => Card(child: ListTile(title: Text(hobbies[i]), trailing: const Icon(Icons.chevron_right), onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => FeedScreen(hobby: hobbies[i])))))));
  }
}

class FeedScreen extends StatelessWidget {
  final String hobby;
  const FeedScreen({super.key, required this.hobby});
  @override
  Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: Text('$hobby Feed')), body: Center(child: Text('Voting feed for $hobby')));
}
