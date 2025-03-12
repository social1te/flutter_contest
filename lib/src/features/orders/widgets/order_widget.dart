import 'package:flutter/material.dart';
import 'package:untitled3/src/config/styles/colors.dart';

class OrderWidget extends StatelessWidget {
  const OrderWidget({
    super.key,
    required this.time,
  });

  final String time;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: GestureDetector(
        onTap: (){
          Navigator.of(context).pushNamed('/order_details');
        },
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16), color: Colors.white),
          padding: EdgeInsets.all(10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  SizedBox(
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '№ 323212343',
                    style: TextStyle(
                      color: AppColors.pictonBlue,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Nike Club Max',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 4),
                  Text(
                    '\$8787',
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
              Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(time),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
