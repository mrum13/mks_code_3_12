import 'package:flutter/material.dart';
import 'package:makassar_coding_3_12/data.dart';

class DetailPage extends StatelessWidget {
  final int index;

  const DetailPage({
    super.key,
    required this.index
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          // scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(carData[index]['image']),
                const SizedBox(height: 12,),
                Text(carData[index]['car_name'],
                  style: const TextStyle(
                    fontSize: 24
                  ),
                ),
                const SizedBox(height: 4,),
                Text(carData[index]['published'],
                  style: const TextStyle(
                    fontSize: 14
                  ),
                ),
                const SizedBox(height: 24,),
                Text(carData[index]['desc'],
                  style: const TextStyle(
                    fontSize: 14
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}