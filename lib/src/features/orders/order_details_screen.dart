import 'package:flutter/material.dart';
import 'package:untitled3/src/config/styles/colors.dart';
import 'package:untitled3/src/features/cart/widgets/cart_widget.dart';
import 'package:untitled3/src/features/orders/widgets/order_widget.dart';

class OrderDetailsScreen extends StatelessWidget {
  const OrderDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cultured,
      appBar: AppBar(
        backgroundColor: AppColors.cultured,
        centerTitle: true,
        title: Text('Заказ № 12313433'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('7 мин назад')
              ],
            ),
            CartWidget(),
            SizedBox(height: 12),
            CartWidget(),
            SizedBox(height: 12),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Контактная информация',
                          style: TextStyle(fontSize: 14),
                        )
                      ],
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 0),
                      leading: Icon(Icons.email_outlined),
                      title: Text('tututu123@gmail.com'),
                      subtitle: Text('Email'),
                      trailing: Icon(Icons.edit_outlined),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 0),
                      leading: Icon(Icons.phone),
                      title: Text('+7(123)456-78-09'),
                      subtitle: Text('Телефон'),
                      trailing: Icon(Icons.edit_outlined),
                    ),
                    Row(
                      children: [
                        Text(
                          'Адрес',
                          style: TextStyle(fontSize: 14),
                        )
                      ],
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 0),
                      title: Text('Ленина 24'),
                      trailing: Icon(Icons.arrow_drop_down),
                    ),
                    SizedBox(height: 16),
                    Container(
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: AppColors.cultured,
                      ),
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Text(
                          'Способ оплаты',
                          style: TextStyle(fontSize: 14),
                        )
                      ],
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 0),
                      leading: Icon(Icons.credit_card),
                      title: Text('Карта'),
                      trailing: Icon(Icons.arrow_drop_down),
                    ),
                    SizedBox(height: 25),
                    ListTile(
                      title: Text('Сумма'),
                      trailing: Text('₽3434'),
                    ),
                    ListTile(
                      title: Text('Доставка'),
                      trailing: Text('₽223'),
                    ),
                    Divider(),
                    ListTile(
                      title: Text('Итого'),
                      trailing: Text('₽3657'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
