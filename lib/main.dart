import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daftar Berita',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const DaftarBerita(),
    );
  }
}

class DaftarBerita extends StatelessWidget {
  const DaftarBerita({super.key});

  // Data dummy berita dengan 6 item dan link gambar valid
  final List<Map<String, String>> berita = const [
    {
      "judul": "Flutter 4.0 Resmi Rilis",
      "deskripsi": "Framework cross-platform semakin cepat dan stabil.",
      "gambar":
          "https://images.unsplash.com/photo-1519125323398-675f0ddb6308?auto=format&fit=crop&w=400&q=80",
    },
    {
      "judul": "AI Semakin Populer",
      "deskripsi": "Penggunaan AI makin luas di berbagai sektor kehidupan.",
      "gambar":
          "https://images.unsplash.com/photo-1506744038136-46273834b3fb?auto=format&fit=crop&w=400&q=80",
    },
    {
      "judul": "Teknologi 5G Hadir di Indonesia",
      "deskripsi": "Internet makin cepat dengan hadirnya jaringan 5G.",
      "gambar":
          "https://images.unsplash.com/photo-1465101046530-73398c7f28ca?auto=format&fit=crop&w=400&q=80",
    },
    {
      "judul": "Startup Lokal Mendunia",
      "deskripsi": "Startup Indonesia mulai dikenal di kancah internasional.",
      "gambar":
          "https://images.unsplash.com/photo-1515378791036-0648a3ef77b2?auto=format&fit=crop&w=400&q=80",
    },
    {
      "judul": "Pendidikan Digital Meningkat",
      "deskripsi": "Pembelajaran daring semakin diminati masyarakat.",
      "gambar":
          "https://images.unsplash.com/photo-1522202176988-66273c2fd55f?auto=format&fit=crop&w=400&q=80",
    },
    {
      "judul": "Ekonomi Kreatif Tumbuh Pesat",
      "deskripsi": "Industri kreatif menjadi tulang punggung ekonomi baru.",
      "gambar":
          "https://images.unsplash.com/photo-1504384308090-c894fdcc538d?auto=format&fit=crop&w=400&q=80",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Daftar Berita")),
      body: ListView.builder(
        itemCount: berita.length,
        itemBuilder: (context, index) {
          final item = berita[index];
          return ListTile(
            leading: Image.network(
              item["gambar"]!,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
            title: Text(item["judul"]!),
            subtitle: Text(item["deskripsi"]!),
            trailing: const Icon(Icons.bookmark_border),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Mengalihkan ke halaman berita"),
                  duration: Duration(seconds: 2),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
