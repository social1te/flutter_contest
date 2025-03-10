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
        automaticallyImplyLeading: false,
        title: Text('Главная'),
        centerTitle: true,
        backgroundColor: AppColors.cultured,
        actions: [
          IconButton(
            onPressed: ()=> Navigator.of(context).pushNamed('/settings'),
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
                  TextButton(
                    onPressed: (){},
                    child: Text('Все',
                      style: TextStyle(color: AppColors.pictonBlue),)
                  ),
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'images/summer_sale.png',
                fit: BoxFit.cover,
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
                Expanded(child: CustomChip(title: 'Размер обуви')),
                Expanded(child: CustomChip(title: 'Цвет')),
              ],
            ),
            SizedBox(height: 12),
            FutureBuilder(
              future: Future.delayed(Duration(seconds: 2),),
              builder: (context, snapshot) {
                return GridView.builder(
                    itemCount: 12,
                    primary: false,
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ItemGrid(),
                      );
                    });
              },
            )
          ],
        ),
      ),
    );
  }
}
