import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        color: Color(0xffFFBBF4),
      ),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            top: 0,
            child: SvgPicture.asset(
              'assets/images/vector116.svg',
            ),
          ),
          Positioned(
            left: 0,
            top: 0,
            child: SvgPicture.asset(
              'assets/images/star.svg',
            ),
          ),
          Positioned(
            left: 0,
            top: 50,
            child: SvgPicture.asset(
              'assets/images/vector117.svg',
              width: 105,
              height: 217,
            ),
          ),
          Positioned(
            left: 20,
            top: 80.0,
            child: RichText(
              text: const TextSpan(
                text: 'SEMPLE!\n',
                style: TextStyle(
                  fontSize: 31,
                  fontFamily: 'Cyrillic',
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                children: [
                  WidgetSpan(
                    child: SizedBox(height: 30),
                  ),
                  TextSpan(
                    text:
                        'ПОПРОБУЙТЕ НОВОЕ\n СРЕДСТВО ДЛЯ ЧИСТКИ\n ЗУБОВ БЕСПЛАТНО',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 10,
            bottom: 10,
            child: GestureDetector(
              onTap: () {},
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: const Color(0xffFFEF7D),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 13, vertical: 10),
                  child: Row(
                    children: [
                      Text(
                        'ЗАКАЗАТЬ СЕЙЧАС',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      Icon(Icons.arrow_right_alt_sharp)
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            right: 70,
            top: 60,
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: const Color(0xffFFEF7D),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                child: Text(
                  '50 баллов',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xffB5A3F8),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            right: 10,
            top: 48,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: const Color(0xff99BFD4),
                  width: 2,
                ),
              ),
              child: const CircleAvatar(
                radius: 21,
                backgroundImage: AssetImage(
                  'assets/images/unsplash_dnL6ZIpht2s.png',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
