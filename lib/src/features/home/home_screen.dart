import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/src/config/styles/colors.dart';
import 'package:untitled3/src/data/products/remote/models/products_response.dart';
import 'package:untitled3/src/data/products/remote/products_data_source.dart';
import 'package:untitled3/src/features/home/widgets/choice_chip.dart';
import 'package:untitled3/src/features/home/widgets/item_grid.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

final _dio = Dio();

class _HomeScreenState extends State<HomeScreen> {
  final productsDataSource = ProductsDataSource(_dio);

  final apiKey =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inp5bHZydXVjdGVnZ2R5b2ZkZWNtIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDEwOTE4MTMsImV4cCI6MjA1NjY2NzgxM30.3i46P07LaqKd9mF0suHfwunWZl8HindgZ3hdzU6WDzE';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cultured,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Главная'),
        centerTitle: true,
        backgroundColor: AppColors.cultured,
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context).pushNamed('/settings'),
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
                    onPressed: () {},
                    child: Text(
                      'Все',
                      style: TextStyle(color: AppColors.pictonBlue),
                    ),
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
            GridView.builder(
                itemCount: 6,
                primary: false,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: ()=> Navigator.of(context).pushNamed('/details'),
                      child: ItemGrid(
                        name: 'Air Max 270',
                        price: 999,
                      ),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
