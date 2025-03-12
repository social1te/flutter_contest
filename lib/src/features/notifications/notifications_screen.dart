import 'package:flutter/material.dart';
import 'package:untitled3/src/features/notifications/widgets/notification_widget.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Уведомления'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              NotificationWidget(),
              NotificationWidget(),
              NotificationWidget(),
              NotificationWidget(),
              NotificationWidget(),
              NotificationWidget()
            ],
          ),
        ),
      ),
    );
  }
}
