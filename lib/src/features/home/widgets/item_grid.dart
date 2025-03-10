import 'package:flutter/material.dart';
import 'package:untitled3/src/config/styles/colors.dart';

class ItemGrid extends StatelessWidget {
  const ItemGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: AppColors.cultured,
                child: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text('Best Seller'),
            ],
          ),
          Row(
            children: [
              Text('Nike Air Max'),
            ],
          ),
          Row(
            children: [
              Text('1222P'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.all(7),
                child: Icon(Icons.add, color: Colors.white,),
                decoration: BoxDecoration(
                  color: AppColors.pictonBlue,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
