import 'package:flutter/material.dart';

class MenuCategoryCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final String? badgeText;

  const MenuCategoryCard(
      {super.key,
      required this.icon,
      required this.title,
      required this.subtitle,
      this.badgeText});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 100,
          margin: const EdgeInsets.only(right: 12),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 5,
                  offset: Offset(0, 2),
                )
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 36,
                color: Colors.red,
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                title,
                style: TextStyle(fontSize: 12),
              ),
              Text(
                subtitle,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              )
            ],
          ),
        ),
        if (badgeText != null)
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
              decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                badgeText!,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
      ],
    );
  }
}
