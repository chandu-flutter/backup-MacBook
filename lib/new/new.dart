import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'package:thandri_sannidhi/new/new_user_success.dart';

class NewScreen extends StatefulWidget {
  const NewScreen({super.key});

  @override
  State<NewScreen> createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  //CollectionReference users = FirebaseFirestore.instance.collection("users");
  final _formfield = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final dobController = TextEditingController();
  final stateController = TextEditingController();
  final countryController = TextEditingController();
  bool loading = false;
  final fireStore = FirebaseFirestore.instance.collection("users");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: const Text("New Here"),
        backgroundColor: const Color.fromARGB(255, 54, 1, 63),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: SingleChildScrollView(
          child: Form(
            key: _formfield,
            child: Column(
              children: <Widget>[
                Lottie.asset("animations/new.json", height: 200),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 28.0, right: 28, top: 5, bottom: 5),
                  child: TextFormField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      hintText: "Your Name",
                      prefixIcon: Icon(Icons.person),
                      prefixIconColor: Color.fromARGB(255, 54, 1, 63),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter Your Name";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 28.0, right: 28, top: 5, bottom: 5),
                  child: TextFormField(
                    controller: phoneController,
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.phone_android),
                        prefixIconColor: Color.fromARGB(255, 54, 1, 63),
                        hintText: "Your Phone Number"),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter Your Phone Number";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 28.0, right: 28, top: 5, bottom: 5),
                  child: TextFormField(
                    controller: dobController,
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.cake),
                        prefixIconColor: Color.fromARGB(255, 54, 1, 63),
                        hintText: "BirthDay & Month (eg: 27 May)"),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter Your BirthDay and Month";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 28.0, right: 28, top: 5, bottom: 5),
                  child: TextFormField(
                    controller: stateController,
                    decoration: const InputDecoration(
                      hintText: "Your State ",
                      prefixIcon: Icon(Icons.location_on),
                      prefixIconColor: Color.fromARGB(255, 54, 1, 63),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter Your State";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 28.0, right: 28, top: 5, bottom: 5),
                  child: TextFormField(
                    controller: countryController,
                    decoration: const InputDecoration(
                      hintText: "Country Of Residence",
                      prefixIcon: Icon(Icons.language),
                      prefixIconColor: Color.fromARGB(255, 54, 1, 63),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter Your Country";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 42.0, left: 26, right: 26),
                  child: InkWell(
                    onTap: () {
                      if (_formfield.currentState?.validate() == true) {
                        fireStore
                            .doc("${nameController.text}|${phoneController.text}")
                            .set({
                          'name': nameController.text.toString(),
                          'mobile': phoneController.text.toString(),
                          'dob': dobController.text.toString(),
                          'state': stateController.text.toString(),
                          'country': countryController.text.toString(),
                        });
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const SuccessScreen();
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
