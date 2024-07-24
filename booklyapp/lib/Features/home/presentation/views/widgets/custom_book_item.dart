import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imagUrl});
  final String imagUrl;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image:
                DecorationImage(fit: BoxFit.fill, image: NetworkImage(imagUrl)),
          ),
        ),
      ),
    );
  }
}
