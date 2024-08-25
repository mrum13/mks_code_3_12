import 'package:flutter/material.dart';

class CardBottomNavigation extends StatefulWidget {
  final int index;
  final String title;
  final Icons icon;

  const CardBottomNavigation({
    super.key,
    required this.index,
    required this.icon,
    required this.title
  });

  @override
  State<CardBottomNavigation> createState() => _CardBottomNavigationState();
}

class _CardBottomNavigationState extends State<CardBottomNavigation> {
  int indexSelected = 0;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          indexSelected = widget.index;
        });
      },
      child: Container(
        color: indexSelected == widget.index ?Colors.red : Colors.white,
        width: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              widget.icons,

            ), 
            Text(
              widget.title,
              style: TextStyle(
                color: indexSelected==widget.index?Colors.white:Colors.black
              ),
            )],
        ),
      ),
    );
  }
}
