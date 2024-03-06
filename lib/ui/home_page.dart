import 'package:eco_beauty/ui/detail_page.dart';
import 'package:eco_beauty/ui/models/product_model.dart';
import 'package:eco_beauty/ui/widgets/custom_appbar.dart';
import 'package:eco_beauty/ui/widgets/product_card_widget.dart';
import 'package:eco_beauty/ui/widgets/submit_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<ProductModel> products = [
    ProductModel(
      image: 'assets/images/eco1.png',
      title: 'Vinopure',
      description: 'Sérum salicylique Anti-\nimperfections 30ml - Caudalie',
      feedback: '5.0 из 89 отзывов',
    ),
    ProductModel(
      image: 'assets/images/eco2.png',
      title: 'Vinopure',
      description: 'Sérum salicylique Anti-\nimperfections 30ml - Caudalie',
      feedback: '5.0 из 89 отзывов',
    ),
    ProductModel(
      image: 'assets/images/eco3.png',
      title: 'Vinopure',
      description: 'Sérum salicylique Anti-\nimperfections 30ml - Caudalie',
      feedback: '5.0 из 89 отзывов',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 278,
              child: CustomAppBar(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  Text(
                    'недавно опробованные продукты'.toUpperCase(),
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Column(
                    children: products.map((product) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  DetailPage(product: product),
                            ),
                          );
                        },
                        child: ProductCardWidget(
                          image: product.image,
                          title: product.title,
                          description: product.description,
                          feedback: product.feedback,
                        ),
                      );
                    }).toList(),
                  ),
                  const SizedBox(height: 78),
                  const SubmitWidget(),
                  const SizedBox(height: 60),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
