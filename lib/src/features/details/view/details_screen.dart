import 'package:flutter/material.dart';
import 'package:untitled3/src/config/styles/colors.dart';
import 'package:untitled3/src/features/details/view/widgets/other_sneaker_small.dart';
import 'package:untitled3/src/features/home/widgets/choice_chip.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cultured,
      appBar: AppBar(
        backgroundColor: AppColors.cultured,
        title: Text('Sneaker shop'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Nike Air Max 270 Essential',
                  maxLines: 2,
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 26),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'Mens Shoes',
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.auroMetalSaurus,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  '₽ 799.99',
                  style: TextStyle(fontSize: 24),
                ),
              ],
            ),
            Image.asset('images/onboarding_second.png'),
            SizedBox(height: 30),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  OtherSneakerSmall(),
                  OtherSneakerSmall(),
                  OtherSneakerSmall(),
                  OtherSneakerSmall(),
                  OtherSneakerSmall(),
                  OtherSneakerSmall(),
                  OtherSneakerSmall(),
                  OtherSneakerSmall(),
                  OtherSneakerSmall(),
                ],
              ),
            ),
            ExpansionTile(
              title: Text(
                  style: TextStyle(color: AppColors.auroMetalSaurus),
                  'Вставка Max Air 270 обеспечивает непревзойденный комфорт в течение всего дня. Изящный дизайн ...'),
              trailing: Text('Подробнее'),
              children: [
                ListTile(
                  title: Text(
                    'И комфортные стельки',
                    style: TextStyle(color: AppColors.auroMetalSaurus),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: CustomChip(title: 'Размер обуви'),
                ),
                Expanded(
                  child: CustomChip(title: 'Цвет'),
                ),
              ],
            ),
            Spacer(),
            Row(
              children: [
                InkWell(
                  borderRadius: BorderRadius.circular(100),
                  onTap: () {},
                  child: GestureDetector(
                    onTap: () {},
                    child: CircleAvatar(
                      radius: 26,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.favorite_border_rounded,
                        color: Colors.black,
                        size: 26,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
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
                      child: Text('В корзину'),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
