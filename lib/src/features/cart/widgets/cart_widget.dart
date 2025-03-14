import 'package:flutter/material.dart';

class CartWidget extends StatelessWidget {
  const CartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.white),
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Column(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  child: Image.asset(
                    'images/onboarding_second.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 24,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nike Club Max',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  'P 8787',
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
