import 'package:flutter/material.dart';
import 'package:thandri_sannidhi/pages/home.dart';

class PrayerReceivedScreen extends StatelessWidget {
  const PrayerReceivedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: const Text("Thank you"),
        backgroundColor: const Color.fromARGB(255, 97, 3, 114),
        centerTitle: true,
        elevation: 40,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.home),
            highlightColor: Colors.white,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const HomeScreen();
                  },
                ),
              );
            },
          ),
        ],
      ),
      body: SafeArea(
          child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 54, 1, 63),
        ),
        child: const Padding(
          padding: EdgeInsets.only(left: 32, right: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Your sorrow shall be turned into Joy',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'John 16:20',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'We will keep praying for you',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
