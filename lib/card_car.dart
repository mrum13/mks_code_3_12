import 'package:flutter/material.dart';

class CardCar extends StatelessWidget {
  final String cardTitle;
  final String cardSubtitle;
  final String cardImage;

  const CardCar({
    super.key,
    required this.cardTitle,
    required this.cardSubtitle,
    required this.cardImage
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 200,
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(16)),
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ///gambar
          Image.asset(
            cardImage,
            height: 110,
            width: double.infinity,
            fit: BoxFit.contain,
          ),
          const SizedBox(
            height: 12,
          ),
          //judul
          Text(
            cardTitle,
            style: const TextStyle(fontSize: 16),
          ),
          const SizedBox(
            height: 4,
          ),
          //subtitle
          Text(
            cardSubtitle,
            style: const TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
