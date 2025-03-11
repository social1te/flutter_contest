import 'package:flutter/material.dart';
import 'package:untitled3/src/config/styles/colors.dart';
import 'package:untitled3/src/features/cart/widgets/cart_widget.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cultured,
      appBar: AppBar(
        title: Text('Корзина'),
        centerTitle: true,
        backgroundColor: AppColors.cultured,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Row(
              children: [
                Text('3 Товара'),
              ],
            ),
            Expanded(
              flex: 10,
              child: ListView(
                shrinkWrap: true,
                primary: false,
                children: [
                  CartWidget(),
                  CartWidget(),
                  CartWidget(),
                  CartWidget(),
                  CartWidget(),
                  CartWidget(),
                  CartWidget(),
                  CartWidget(),
                  CartWidget(),
                  CartWidget(),
                  CartWidget(),
                  CartWidget(),
                ],
              ),
            ),
            Spacer(),
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
            SizedBox(height: 30),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: ()=>Navigator.of(context).pushNamed('/purchasing'),
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      foregroundColor: Colors.white,
                      backgroundColor: AppColors.pictonBlue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(14),
                      child: Text('Оформить заказ'),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
