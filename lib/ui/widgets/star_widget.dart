import 'package:flutter/material.dart';

class StarWidget extends StatelessWidget {
  final bool? isStar;
  const StarWidget({Key? key, this.isStar = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Icon(
              Icons.star,
              color: Color(0xff99BFD4),
              size: 18,
            ),
            const Icon(
              Icons.star,
              color: Color(0xff99BFD4),
              size: 18,
            ),
            const Icon(
              Icons.star,
              color: Color(0xff99BFD4),
              size: 18,
            ),
            isStar == false
                ? const Icon(
                    Icons.star,
                    color: Color(0xff99BFD4),
                    size: 18,
                  )
                : const Icon(
                    Icons.star_border,
                    color: Color(0xff99BFD4),
                    size: 18,
                  ),
            isStar == false
                ? const Icon(
                    Icons.star,
                    color: Color(0xff99BFD4),
                    size: 18,
                  )
                : const Icon(
                    Icons.star_border,
                    color: Color(0xff99BFD4),
                    size: 18,
                  ),
          ],
        ),
      ],
    );
  }
}
