import 'package:flutter/material.dart';

class HeaderImage extends StatelessWidget {
  const HeaderImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 100,
      child: Image.network(
          "https://upload.wikimedia.org/wikipedia/en/thumb/8/8c/American_International_University-Bangladesh_Monogram.svg/1200px-American_International_University-Bangladesh_Monogram.svg.png"),
    );
  }
}
