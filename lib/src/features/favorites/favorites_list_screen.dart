import 'package:flutter/material.dart';
import 'package:untitled3/src/features/home/widgets/item_grid.dart';

class FavoritesListScreen extends StatelessWidget {
  const FavoritesListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Избранное'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.filter_list_sharp),
          ),
        ],
      ),
      body: GridView.builder(
          itemCount: 12,
          primary: false,
          shrinkWrap: true,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ItemGrid(
                name: 'Nike Air Max 270',
                price: 999,
              ),
            );
          }),
    );
  }
}
