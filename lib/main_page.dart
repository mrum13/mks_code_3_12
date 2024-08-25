import 'package:flutter/material.dart';
import 'package:makassar_coding_3_12/card_bottom_navigation.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        padding: EdgeInsets.zero,
        height: 64,
        color: Colors.white,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            
            CardBottomNavigation(
              icon: const Icon(Icons.home),
              index: 0,
              title: 'Home',
            ),
            CardBottomNavigation(
              icon: const Icon(Icons.list),
              index: 1,
              title: 'Favorite',
            ),
            CardBottomNavigation(
              icon: const Icon(Icons.person),
              index: 2,
              title: 'Account',
            )
          ],
        ),
      ),
      body: Center(
        child: Text('Main Page'),
      ),
    );
  }
}