import 'package:eco_beauty/ui/widgets/star_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CommentWidget extends StatelessWidget {
  const CommentWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Комментарии (387)',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Text(
                      'новые',
                      style: TextStyle(fontSize: 14),
                    ),
                    const SizedBox(width: 5),
                    SvgPicture.asset('assets/images/Vector.svg')
                  ],
                ),
                const SizedBox(width: 10),
                Row(
                  children: [
                    const Text(
                      'новые',
                      style: TextStyle(fontSize: 14),
                    ),
                    const SizedBox(width: 5),
                    SvgPicture.asset('assets/images/Vector2.svg')
                  ],
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 15),
        DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(
              color: const Color(0xff99BFD4),
              width: 1,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                const SizedBox(height: 20),
                Row(
                  children: [
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
                        radius: 20,
                        backgroundImage: AssetImage(
                          'assets/images/unsplash_dnL6ZIpht2s.png',
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),
                    const Text(
                      '@wolflikemeee',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff99BFD4),
                      ),
                    ),
                    const SizedBox(width: 20),
                  ],
                ),
                const SizedBox(height: 10),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    StarWidget(isStar: true),
                    Text('29/08/2023'),
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                    'Запах сыворотки неприятный. Для меня это просто «ух». Есть намек на что-то алкогольное, а также смесь трав. Возможно, такое неприятное сочетание вызвано эфирными маслами, которые я уже указала в составе.\n\n При нанесении сыворотки стараюсь сильно не дышать 🤪 жаль, что запах еще какое-то время задерживается на коже.\n\n Сыворотка имеет гелевую текстуру. Довольно густой, не особенно жидкий. Он легко распределяется по коже и без особых усилий.'),
                const SizedBox(height: 20),
                const Row(
                  children: [
                    Icon(
                      Icons.add,
                      color: Color(0xff99bfd4),
                    ),
                    Expanded(
                      child: Text(
                          'Эффекта сужения пор в течение дня не получите.'),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Row(
                  children: [
                    Icon(
                      Icons.add,
                      color: Color(0xff99bfd4),
                    ),
                    Expanded(
                      child: Text(
                          'Эффекта сужения пор в течение дня не получите.'),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Row(
                  children: [
                    Icon(
                      Icons.remove,
                      color: Color(0xff99bfd4),
                    ),
                    Expanded(
                      child: Text(
                          'Эффекта сужения пор в течение дня не получите.'),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Row(
                  children: [
                    Icon(
                      Icons.remove,
                      color: Color(0xff99bfd4),
                    ),
                    Expanded(
                      child: Text(
                          'Эффекта сужения пор в течение дня не получите.'),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
