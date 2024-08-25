import 'package:flutter/material.dart';
import 'package:makassar_coding_3_12/card_car.dart';
import 'package:makassar_coding_3_12/data.dart';
import 'package:makassar_coding_3_12/detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var number = 0;
  bool isGrid = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lamborghini'),
        leading: Image.asset('assets/logo.png',
          height: 16,
          width: 16,
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                isGrid = !isGrid;
              });
            }, 
            icon: isGrid 
              ? const  Icon(Icons.view_list_rounded) 
              : const Icon(Icons.grid_on)
          )
        ],
      ),
      body: Center(
          child: isGrid 
          ?
          ///gridview.builder
          GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // number of items in each row
              mainAxisSpacing: 4.0, // spacing between rows
              crossAxisSpacing: 4.0, // spacing between columns
            ),
            padding: const EdgeInsets.all(8.0), // padding around the grid
            itemCount: carData.length, // total number of items
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(index: index,), ));
                },
                child: CardCar(
                    cardTitle: carData[index]['car_name'],
                    cardSubtitle: carData[index]['published'],
                    cardImage: carData[index]['image']),
              );
            },
          ) 
          :

          ///listview
          ListView.separated(
            // shrinkWrap: true,
            // physics: const NeverScrollableScrollPhysics(),
            // scrollDirection: Axis.horizontal,
            itemCount: carData.length,
            separatorBuilder: (context, index) {
              return const SizedBox(height: 12,);
              // return const SizedBox(width: 12,);
            },
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context, MaterialPageRoute(
                      builder: (context) => DetailPage(index: index,), 
                    )
                  );
                },
                child: CardCar(
                  cardTitle: carData[index]['car_name'],
                  cardSubtitle: carData[index]['published'],
                  cardImage: carData[index]['image'],
                ),
              );
            },
          )
          ),
    );
  }
}
