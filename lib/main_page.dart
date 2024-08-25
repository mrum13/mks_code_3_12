import 'package:flutter/material.dart';
import 'package:makassar_coding_3_12/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int i = 0;

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
            ///bottom navigation home
            InkWell(
              onTap: () {
                setState(() {
                  i = 0;
                });
              },
              child: Container(
                height: 60,
                width: 70,
                decoration: BoxDecoration(
                  color: i==0? const Color.fromARGB(255, 254, 180, 6):Colors.white,
                  borderRadius: BorderRadius.circular(8)
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 6, 
                  horizontal: 12
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.home,
                      size: 24,
                      color: i==0?Colors.white:Colors.black,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text('Home',
                      style: TextStyle(
                        fontSize: 12,
                        color: i==0?Colors.white:Colors.black
                      ),
                    )
                  ],
                ),
              ),
            ),
            ///bottom navigation Favorite
            InkWell(
              onTap: () {
                setState(() {
                  i = 1;
                });
              },
              child: Container(
                height: 60,
                width: 70,
                decoration: BoxDecoration(
                  color: i==1? const Color.fromARGB(255, 254, 180, 6):Colors.white,
                  borderRadius: BorderRadius.circular(8)
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 6, 
                  horizontal: 12
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.favorite,
                      size: 24,
                      color: i==1?Colors.white:Colors.black,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text('Favorite',
                      style: TextStyle(
                        fontSize: 12,
                        color: i==1?Colors.white:Colors.black
                      ),
                    )
                  ],
                ),
              ),
            ),
            ///bottom navigation account
            InkWell(
              onTap: () {
                setState(() {
                  i = 2;
                });
              },
              child: Container(
                height: 60,
                width: 70,
                decoration: BoxDecoration(
                  color: i==2? const Color.fromARGB(255, 254, 180, 6):Colors.white,
                  borderRadius: BorderRadius.circular(8)
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 6, 
                  horizontal: 12
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.person,
                      size: 24,
                      color: i==2?Colors.white:Colors.black,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text('Account',
                      style: TextStyle(
                        fontSize: 11,
                        color: i==2?Colors.white:Colors.black
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: buildContent(i)
          )
        ],
      )
    );
  }

   Widget buildContent(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return const HomePage();
      case 1:
        return const Scaffold(body: Center(child: Text('Favorite Page'),),);
      case 2:
        return const Scaffold(body: Center(child: Text('Account Page'),),);
      default:
        return const Center(
          child: Text('Ini Default Page'),
        );
    }
  }
}