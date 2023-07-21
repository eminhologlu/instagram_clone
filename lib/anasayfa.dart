import 'package:flutter/material.dart';
import 'package:instagram_clone/gonderiler.dart';
import 'package:instagram_clone/profile.dart';

class AnaSayfa extends StatefulWidget {
  AnaSayfa({super.key});
  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Navigator(
        onGenerateRoute: (settings) {
          Widget page = Gonderiler();
          if (settings.name == 'profile') page = Profile();
          return MaterialPageRoute(builder: (_) => page);
        },
      ),
    );
  }
}
