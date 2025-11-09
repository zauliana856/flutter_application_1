import 'package:flutter/material.dart';

class GridMenuItem extends StatelessWidget {
  final String imagePath;
  final String label;
  final Color color;
  final double size;
  final VoidCallback? onTap;

  const GridMenuItem({
    super.key,
    required this.imagePath,
    required this.label,
    required this.color,
    this.size = 90,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: size,
            height: size,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(20),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 4), // 🔧 jarak antara gambar & teks diperkecil
          Text(
            label,
            style: TextStyle(
              fontSize: size / 6,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
