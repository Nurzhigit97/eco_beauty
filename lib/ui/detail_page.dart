import 'package:eco_beauty/ui/models/product_model.dart';
import 'package:eco_beauty/ui/widgets/comment_widget.dart';
import 'package:eco_beauty/ui/widgets/detail_product_card_widget.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final ProductModel product;
  const DetailPage({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F7F7),
      appBar: AppBar(
        backgroundColor: const Color(0xffF7F7F7),
        foregroundColor: Colors.black,
        actions: [
          Row(
            children: [
              DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: const Color(0xffFFEF7D),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  child: Text(
                    '50 points',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xffB5A3F8),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 5),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: const Color(0xff99BFD4),
                    width: 2,
                  ),
                ),
                child: const CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(
                    'assets/images/unsplash_dnL6ZIpht2s.png',
                  ),
                ),
              ),
              const SizedBox(width: 20),
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            DetailProductCardWidget(product: product),
            const SizedBox(height: 20),
            const CommentWidget(),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
