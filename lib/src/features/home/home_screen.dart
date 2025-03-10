import 'package:flutter/material.dart';
import 'package:untitled3/src/config/styles/colors.dart';
import 'package:untitled3/src/features/home/widgets/choice_chip.dart';
import 'package:untitled3/src/features/home/widgets/item_grid.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final String sizeValue = 'Размер';
    List sizes = [
      '33',
      '34',
      '35',
    ];
    return Scaffold(
      backgroundColor: AppColors.cultured,
      appBar: AppBar(
        title: Text('Главная'),
        centerTitle: true,
        backgroundColor: AppColors.cultured,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.filter_list_sharp),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Поиск',
                hintStyle: TextStyle(
                  color: AppColors.auroMetalSaurus,
                ),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                children: [
                  Text(
                    'Акции',
                    style: TextStyle(fontSize: 16),
                  ),
                  Spacer(),
                  Text(
                    'Все',
                    style: TextStyle(color: AppColors.pictonBlue),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(55),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  16,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                children: [
                  Text(
                    'Категории',
                    style: TextStyle(fontSize: 16),
                  ),
                  Spacer(),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CustomChip(title: 'Все'),
                  CustomChip(title: 'Outdoor'),
                  CustomChip(title: 'Tennis'),
                  CustomChip(title: 'Footballs'),
                ],
              ),
            ),
            SizedBox(height: 12),
            Row(
              children: [
                Text(
                  'Фильтр',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomChip(title: 'Размер обуви'),
                CustomChip(title: 'Цвет'),
              ],
            ),
            SizedBox(height: 12),
            ItemGrid()
          ],
        ),
      ),
    );
  }
}
