import 'package:flutter/material.dart';

class SubmitWidget extends StatelessWidget {
  const SubmitWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: const Color(0xff99BFD4),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'смотреть все'.toUpperCase(),
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
              const Icon(
                Icons.arrow_right_alt_sharp,
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
