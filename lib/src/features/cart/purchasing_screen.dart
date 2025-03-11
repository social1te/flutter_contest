import 'package:flutter/material.dart';
import 'package:untitled3/src/config/styles/colors.dart';

class PurchasingScreen extends StatelessWidget {
  const PurchasingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cultured,
      appBar: AppBar(
        backgroundColor: AppColors.cultured,
        title: Text('Корзина'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
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
                      leading: Icon(Icons.email_outlined),
                      title: Text('tututu123@gmail.com'),
                      subtitle: Text('Email'),
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
                        color: AppColors.auroMetalSaurus,
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
            Spacer(),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => showDialog(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: AppColors.pictonBlue,
                              foregroundColor: Colors.white,
                              child: Icon(Icons.check),
                            ),
                            SizedBox(height: 25),
                            Text(
                              'Вы успешно оформили заказ',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 32),
                            ElevatedButton(
                              onPressed: () =>
                                  Navigator.of(context).pushNamed('/main'),
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
                                child: Text('Вернуться к покупкам'),
                              ),
                            )
                          ],
                        ),
                        backgroundColor: Colors.white,
                      ),
                    ),
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
                      child: Text('Подтвердить'),
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
