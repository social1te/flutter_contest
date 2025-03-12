import 'package:flutter/material.dart';
import 'package:untitled3/src/config/styles/colors.dart';
import 'package:untitled3/src/features/orders/widgets/order_widget.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cultured,
      appBar: AppBar(
        title: Text('Заказы'),
        centerTitle: true,
        backgroundColor: AppColors.cultured,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Недавние',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            OrderWidget(time: '7 мин назад'),
            OrderWidget(time: '7 мин назад'),
            Row(
              children: [
                Text(
                  'Вчера',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            OrderWidget(time: '10:22'),
          ],
        ),
      ),
    );
  }
}
