import 'package:flutter/material.dart';

class UmkmPopularCard extends StatelessWidget {
  final String imageAsset;
  final String title;
  final int produk;
  final String? instagram;
  final String pemilik;
  final String idUmkm;
  final String? badgeText;

  const UmkmPopularCard(
      {super.key,
      required this.imageAsset,
      required this.title,
      required this.produk,
      this.instagram,
      required this.pemilik,
      required this.idUmkm,
      this.badgeText});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 4,
      child: Column(
        children: [
          // Gambar Produk
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.asset(
              imageAsset,
              width: 250,
              height: 250,
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Nama Produk
                Text(
                  title,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(height: 8),

                // Info Produk
                Row(
                  children: [
                    Icon(Icons.shopping_bag_outlined, size: 18),
                    SizedBox(width: 6),
                    Text('$produk Produk'),
                  ],
                ),
                const SizedBox(height: 4),
                const Row(
                  children: [
                    Icon(Icons.link, size: 18),
                    SizedBox(width: 6),
                    Text('Lihat Instagram'),
                  ],
                ),
                const SizedBox(height: 12),

                // Nama Pemilik
                Row(
                  children: [
                    const Icon(Icons.account_circle, color: Colors.green),
                    const SizedBox(width: 6),
                    Text(
                      pemilik,
                      style: const TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
