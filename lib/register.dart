import 'package:flutter/material.dart';
import 'main.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final TextEditingController namaController =
      TextEditingController();

  final TextEditingController nbiController =
      TextEditingController();

  final TextEditingController emailController =
      TextEditingController();

  final TextEditingController alamatController =
      TextEditingController();

  final TextEditingController instagramController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],

      body: Center(
        child: Container(
          width: 350,
          height: 700,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black),
          ),

          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const SizedBox(height: 20),

                Image.asset(
                  "assets/images/rg.png",
                  height: 120,
                ),

                const SizedBox(height: 15),

                const Text(
                  "WELCOME",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 5),

                const Text(
                  "Praktikum PAB 2026",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 30),

                TextField(
                  controller: namaController,
                  decoration: const InputDecoration(
                    labelText: "Masukkan Nama",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person),
                  ),
                ),

                const SizedBox(height: 15),

                TextField(
                  controller: nbiController,
                  decoration: const InputDecoration(
                    labelText: "Masukkan NBI",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.badge),
                  ),
                ),

                const SizedBox(height: 15),

                TextField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    labelText: "Masukkan Email",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),
                  ),
                ),

                const SizedBox(height: 15),

                TextField(
                  controller: alamatController,
                  decoration: const InputDecoration(
                    labelText: "Masukkan Alamat",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.location_on),
                  ),
                ),

                const SizedBox(height: 15),

                TextField(
                  controller: instagramController,
                  decoration: const InputDecoration(
                    labelText: "Masukkan Instagram",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.camera_alt),
                  ),
                ),

                const SizedBox(height: 25),

                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (_) => HomePage(),
                        ),
                      );
                    },
                    child: const Text(
                      "Daftar",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
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