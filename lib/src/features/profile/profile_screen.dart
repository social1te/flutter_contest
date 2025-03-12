import 'package:flutter/material.dart';
import 'package:untitled3/src/common/widgets/input_container.dart';
import 'package:untitled3/src/config/styles/colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
        elevation: 0,
        backgroundColor: AppColors.pictonBlue,
        width: MediaQuery.of(context).size.width * 0.7,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.25,
              width: MediaQuery.of(context).size.width,
              color: AppColors.pictonBlue,
              padding: EdgeInsets.all(36),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 44,
                    backgroundColor: AppColors.cultured,
                    child: Icon(
                      Icons.person,
                      color: AppColors.pictonBlue,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Person Name',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              onTap: (){
                Navigator.pop(context);
              },
              leading: Icon(
                Icons.person,
                color: Colors.white,
              ),
              title: Text(
                'Профиль',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              onTap: (){
                Navigator.of(context).pushNamed('/cart');
              },
              leading: Icon(
                Icons.shopping_bag_outlined,
                color: Colors.white,
              ),
              title: Text(
                'Корзина',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              onTap: (){
                Navigator.of(context).pushNamed('/favs');
              },
              leading: Icon(
                Icons.favorite_border_rounded,
                color: Colors.white,
              ),
              title: Text(
                'Избранное',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              onTap: (){
                Navigator.of(context).pushNamed('/orders');
              },
              leading: Icon(
                Icons.local_shipping_outlined,
                color: Colors.white,
              ),
              title: Text(
                'Заказы',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              onTap: (){
                Navigator.of(context).pushNamed('/notifications');
              },
              leading: Icon(
                Icons.notifications_none_rounded,
                color: Colors.white,
              ),
              title: Text(
                'Уведомления',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              onTap: (){
                Navigator.of(context).pushNamed('/settings');
              },
              leading: Icon(
                Icons.settings_outlined,
                color: Colors.white,
              ),
              title: Text(
                'Настройки',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 15),
            Divider(
              color: Colors.white,
              indent: 20,
              endIndent: 20,
            ),
            SizedBox(height: 15),
            ListTile(
              leading: Icon(
                Icons.logout,
                color: Colors.white,
              ),
              title: Text(
                'Выход',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Профиль'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.edit_outlined),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              CircleAvatar(
                radius: 48,
                backgroundColor: AppColors.cultured,
                child: Icon(
                  Icons.person,
                  color: AppColors.auroMetalSaurus,
                  size: 48,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Person Name',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 38),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: ()=> Navigator.of(context).pushNamed('/barcode'),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: AppColors.cultured,
                        ),
                        height: 65,
                        child: Center(
                          child: Text('Поле для баркода'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              InputContainer(
                hintText: 'Person',
                label: 'Имя',
              ),
              SizedBox(height: 16),
              InputContainer(
                hintText: 'Name',
                label: 'Фамилия',
              ),
              SizedBox(height: 16),
              InputContainer(
                hintText: '8(800)800-22-22',
                label: 'Телефон',
              ),
              SizedBox(height: 16),
              InputContainer(
                hintText: 'Ленина 24',
                label: 'Адрес',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
