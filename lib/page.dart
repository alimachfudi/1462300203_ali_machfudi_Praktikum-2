import 'package:flutter/material.dart';
import 'main.dart';
import 'profile.dart';

class PageBaru extends StatelessWidget {
  const PageBaru({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                tombolKategori("Novel"),
                tombolKategori("Romantis"),
                tombolKategori("Sejarah"),
                tombolKategori("Biografi"),
              ],
            ),

            const SizedBox(width: 50),

            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: kartuBuku(
                      "assets/images/laut.jfif",
                      "Laut Bercerita",
                      "Leila S. Chudori",
                      "Kisah perjuangan aktivis mahasiswa pada masa Orde Baru yang penuh pengorbanan.",
                    ),
                  ),

                  const SizedBox(width: 20),

                  Expanded(
                    child: kartuBuku(
                      "assets/images/perahu.jfif",
                      "Perahu Kertas",
                      "Dee Lestari",
                      "Cerita tentang persahabatan, mimpi, dan perjalanan cinta Kugy dan Keenan.",
                    ),
                  ),

                  const SizedBox(width: 20),

                  Expanded(
                    child: kartuBuku(
                      "assets/images/dilan.jfif",
                      "Dilan 1990",
                      "Pidi Baiq",
                      "Kisah romantis dan unik antara Dilan dan Milea saat masa SMA.",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        type: BottomNavigationBarType.fixed,

        onTap: (index) {
          // HOME
          if (index == 0) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ),
            );
          }

          // PROFILE
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

  Widget tombolKategori(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: SizedBox(
        width: 180,
        height: 50,
        child: OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            shape: const StadiumBorder(),
          ),
          child: Text(text),
        ),
      ),
    );
  }

  Widget kartuBuku(
    String gambar,
    String judul,
    String penulis,
    String deskripsi,
  ) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            gambar,
            height: 180,
            width: double.infinity,
            fit: BoxFit.cover,
          ),

          const SizedBox(height: 15),

          Text(
            judul,
            style: const TextStyle(
              fontSize: 22,
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

          const SizedBox(height: 15),

          Text(
            deskripsi,
            style: const TextStyle(
              fontSize: 15,
            ),
          ),

          const Spacer(),

          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 45),
            ),
            child: const Text("Pinjam Buku"),
          ),
        ],
      ),
    );
  }
}