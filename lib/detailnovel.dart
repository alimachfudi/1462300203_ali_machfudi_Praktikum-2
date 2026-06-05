import 'package:flutter/material.dart';

class DetailNovelPage extends StatelessWidget {
  final String gambar;
  final String judul;
  final String penulis;
  final String deskripsi;

  const DetailNovelPage({
    super.key,
    required this.gambar,
    required this.judul,
    required this.penulis,
    required this.deskripsi,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(judul),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                gambar,
                height: 300,
              ),

              const SizedBox(height: 20),

              Text(
                judul,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              Text(
                penulis,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 20),

              Text(
                deskripsi,
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 30),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "Pinjam Buku",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}