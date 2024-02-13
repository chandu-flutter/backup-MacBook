import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';
import 'package:thandri_sannidhi/prayer/prayer_received.dart';

class PrayerRequestScreen extends StatefulWidget {
  const PrayerRequestScreen({super.key});

  @override
  State<PrayerRequestScreen> createState() => _PrayerRequestScreenState();
}

class _PrayerRequestScreenState extends State<PrayerRequestScreen> {
  //CollectionReference users = FirebaseFirestore.instance.collection("users");
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final prayerController = TextEditingController();
  final fireStore = FirebaseFirestore.instance.collection("prayer");

  String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return "Enter Your Name";
    }
    return null;
  }

  String? validatePhone(String? value) {
    if (value == null || value.isEmpty) {
      return "Enter Your Mobile Number";
    }
    return null;
  }

  String? validateRequest(String? value) {
    if (value == null || value.isEmpty) {
      return "Enter Your Prayer Request";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          title: const Text("Prayer Request"),
          backgroundColor: const Color.fromARGB(255, 54, 1, 63),
          centerTitle: true,
        ),
        body: Container(
          height: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                // Lottie.asset("animations/new.json", height: 100),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 28.0, right: 28, top: 35, bottom: 5),
                  child: TextFormField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      hintText: "Your Name",
                      prefixIcon: Icon(Icons.person),
                      prefixIconColor: Color.fromARGB(255, 54, 1, 63),
                    ),
                    validator: validateName,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 28.0, right: 28, top: 5, bottom: 5),
                  child: TextFormField(
                    controller: phoneController,
                    decoration: const InputDecoration(
                      hintText: "Your Phone Number",
                      prefixIcon: Icon(Icons.phone_android),
                      prefixIconColor: Color.fromARGB(255, 54, 1, 63),
                    ),
                    validator: validatePhone,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 28.0, right: 28, top: 15, bottom: 5),
                  child: TextFormField(
                    maxLines: 15,
                    controller: prayerController,
                    decoration: const InputDecoration(
                      hintText: "Prayer Request",
                      border: OutlineInputBorder(),
                    ),
                    validator: validateRequest,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 42.0, left: 26, right: 26),
                  child: InkWell(
                    onTap: () {
                      if (_formKey.currentState?.validate() == true) {
                        fireStore
                            .doc("${nameController.text}|${phoneController.text}")
                            .set({
                          'name': nameController.text.toString(),
                          'mobile': phoneController.text.toString(),
                          'prayer': prayerController.text.toString(),
                        });
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const PrayerReceivedScreen();
                            },
                          ),
                        );
                      }
                    },
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 54, 1, 63),
                      ),
                      child: const Center(
                        child: Text(
                          "Submit",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
