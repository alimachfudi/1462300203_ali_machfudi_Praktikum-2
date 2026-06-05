import 'package:flutter/material.dart';
import 'main.dart';
import 'profile.dart';
import 'detailnovel.dart';

class PageBaru extends StatelessWidget {
  const PageBaru({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        title: const Text("Daftar Novel"),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(12),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            kartuNovel(
              context,
              "assets/images/laut.jfif",
              "Laut Bercerita",
              "Leila S. Chudori",
              "Kisah perjuangan aktivis mahasiswa pada masa Orde Baru yang penuh pengorbanan.",
            ),

            kartuNovel(
              context,
              "assets/images/perahu.jfif",
              "Perahu Kertas",
              "Dee Lestari",
              "Cerita tentang persahabatan, mimpi, dan perjalanan cinta Kugy dan Keenan.",
            ),

            kartuNovel(
              context,
              "assets/images/dilan.jfif",
              "Dilan 1990",
              "Pidi Baiq",
              "Kisah romantis dan unik antara Dilan dan Milea saat masa SMA.",
            ),

            kartuNovel(
              context,
              "assets/images/laskar.jfif",
              "Laskar Pelangi",
              "Andrea Hirata",
              "Cerita inspiratif tentang pendidikan dan persahabatan.",
            ),

            kartuNovel(
              context,
              "assets/images/bumi.jfif",
              "Bumi",
              "Tere Liye",
              "Petualangan dunia paralel yang penuh misteri.",
            ),

            kartuNovel(
              context,
              "assets/images/negeri.jfif",
              "Negeri 5 Menara",
              "Ahmad Fuadi",
              "Kisah perjuangan meraih cita-cita dan mimpi besar.",
            ),
          ],
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
                builder: (context) => HomePage(),
              ),
            );
          }

          if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ProfilePage(),
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
            builder: (_) => detailnovelPage(
              gambar: gambar,
              judul: judul,
              penulis: penulis,
              deskripsi: deskripsi,
            ),
          ),
        );
      },
      child: Card(
        elevation: 4,
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
              child: Text(
                judul,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}