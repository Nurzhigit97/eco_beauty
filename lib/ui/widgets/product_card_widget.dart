import 'package:eco_beauty/ui/widgets/star_widget.dart';
import 'package:flutter/material.dart';

class ProductCardWidget extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final String feedback;

  const ProductCardWidget({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.feedback,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          image,
          width: 174,
          height: 174,
        ),
        const SizedBox(height: 10),
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          description,
          style: const TextStyle(
            fontSize: 13,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 5),
        Text(
          feedback,
          style: const TextStyle(fontSize: 8),
        ),
        const SizedBox(height: 11),
        const StarWidget(),
      ],
    );
  }
}
