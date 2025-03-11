import 'package:flutter/material.dart';
import 'package:untitled3/src/config/styles/colors.dart';

class ItemGrid extends StatelessWidget {
  const ItemGrid({
    super.key,
    required this.name,
    required this.price,
  });

  final String name;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8),
            child: Stack(
              children: [
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColors.cultured),
                ),
                Positioned(
                  top: 5,
                  left: 5,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                  ),
                )
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Text(
                  'Best Seller',
                  style: TextStyle(
                    color: AppColors.pictonBlue,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Text(
                  name,
                  style: TextStyle(color: AppColors.dimGray),
                ),
              ],
            ),
          ),
          SizedBox(height: 4),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(price.toString() + '₽'),
                Spacer(),
                Container(
                  padding: EdgeInsets.all(12),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.pictonBlue,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
