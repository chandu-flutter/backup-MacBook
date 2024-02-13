import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:thandri_sannidhi/pages/home.dart';
import 'package:thandri_sannidhi/pages/navbar.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      menuBackgroundColor: const Color.fromARGB(255, 54, 1, 63),
      menuScreen: const NavBar(),
      mainScreen: const HomeScreen(),
      angle: 0,
      duration: const Duration(milliseconds: 600),
      showShadow: true,
      drawerShadowsBackgroundColor: const Color.fromARGB(255, 97, 2, 113),
      slideWidth: MediaQuery.of(context).size.width * 0.75,
    );
  }
}
