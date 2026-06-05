import 'package:flutter/material.dart';
import 'main.dart';
import 'profile.dart';
import 'detailnovel.dart';

class PageBaru extends StatelessWidget {
  const PageBaru({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],

      body: Center(
        child: Container(
          width: 450,
          height: 650,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black),
          ),

          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                const SizedBox(height: 10),

                const Text(
                  "Daftar Novel",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 20),

                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.75,
                    children: [
                      kartuNovel(
                        context,
                        "assets/images/laut.jfif",
                        "Laut Bercerita",
                        "Leila S. Chudori",
                        "Kisah perjuangan aktivis mahasiswa pada masa Orde Baru.",
                      ),

                      kartuNovel(
                        context,
                        "assets/images/perahu.jfif",
                        "Perahu Kertas",
                        "Dee Lestari",
                        "Cerita tentang persahabatan dan cinta.",
                      ),

                      kartuNovel(
                        context,
                        "assets/images/dilan.jfif",
                        "Dilan 1990",
                        "Pidi Baiq",
                        "Kisah romantis Dilan dan Milea.",
                      ),

                      kartuNovel(
                        context,
                        "assets/images/laskar.jfif",
                        "Laskar Pelangi",
                        "Andrea Hirata",
                        "Perjuangan anak-anak Belitung dalam pendidikan.",
                      ),

                      kartuNovel(
                        context,
                        "assets/images/bumi.jfif",
                        "Bumi",
                        "Tere Liye",
                        "Petualangan dunia paralel yang misterius.",
                      ),

                      kartuNovel(
                        context,
                        "assets/images/negeri.jfif",
                        "Negeri 5 Menara",
                        "Ahmad Fuadi",
                        "Perjalanan meraih mimpi dan cita-cita.",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        type: BottomNavigationBarType.fixed,

        onTap: (index) {
          if (index == 0) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (_) => HomePage(),
              ),
            );
          }

          if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const ProfilePage(),
              ),
            );
          }
        },

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie),
            label: "Movie",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }

  Widget kartuNovel(
    BuildContext context,
    String gambar,
    String judul,
    String penulis,
    String deskripsi,
  ) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => DetailNovelPage(
              gambar: gambar,
              judul: judul,
              penulis: penulis,
              deskripsi: deskripsi,
            ),
          ),
        );
      },
      child: Card(
        elevation: 3,
        child: Column(
          children: [
            Expanded(
              child: Image.asset(
                gambar,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Text(
                    judul,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 4),

                  Text(
                    penulis,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 11,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}