import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final message = ModalRoute.of(context)!.settings.arguments as RemoteMessage;
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 54, 1, 63),
        title: const Text('Notifications'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Lottie.asset("animations/notifications.json", width: 50, height: 50),

          Text(
            message.notification!.title.toString(),
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
          Text(
            message.notification!.body.toString(),
            style: const TextStyle(
              fontSize: 16,
              color: Color.fromARGB(255, 54, 1, 63),
            ),
          ),
          // Text(
          //   message.data.toString(),
          // ),
        ]),
      ),
    );
  }
}
