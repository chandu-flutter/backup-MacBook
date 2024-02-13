import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:thandri_sannidhi/pages/about.dart';
import 'package:thandri_sannidhi/pages/meeting_ground.dart';
import 'package:thandri_sannidhi/pages/online_magazine.dart';
import 'package:thandri_sannidhi/pages/policy.dart';
import 'package:thandri_sannidhi/pages/prayer_garden.dart';
import 'package:thandri_sannidhi/pages/tithe.dart';

import 'package:thandri_sannidhi/pages/website.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
//      backgroundColor: const Color.fromARGB(255, 54, 1, 63),
      backgroundColor: const Color.fromARGB(255, 1, 41, 63),
      elevation: 0,
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 1, 41, 63),
            ),
            child: Center(
              child: Column(
                children: [
                  Image(
                    image: AssetImage('images/logo.png'),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.church,
              size: 20,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            title: const Text(
              "About Us ",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const AboutScreen();
                  },
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.public,
              size: 20,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            title: const Text(
              "Website",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const Website();
                  },
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.policy,
              size: 20,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            title: const Text(
              "Privacy policy ",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const PolicyScreen();
                  },
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.family_restroom,
              size: 20,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            title: const Text(
              "Prayer Garden ",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const PrayerGarden();
                  },
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.nature_people,
              size: 20,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            title: const Text(
              "Meeting Ground ",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const MeetingGround();
                  },
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.menu_book,
              size: 20,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            title: const Text(
              "Online Magazine ",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const OnlineMagazineScreen();
                  },
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.card_giftcard,
              size: 20,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            title: const Text(
              "Donate ",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const Tithe();
                  },
                ),
              );
            },
          ),
          Lottie.asset("animations/sw_le.json"),
        ],
      ),
    );
  }
}
