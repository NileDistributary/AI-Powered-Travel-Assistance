import 'package:flutter/material.dart';
import 'recommendations.dart'; // Make sure this file exists and path is correct

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            ImageContainer(),
            SizedBox(height: 30),
            Rectangle821(),
          ],
        ),
      ),
    );
  }
}

class ImageContainer extends StatelessWidget {
  const ImageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 444,
      decoration: ShapeDecoration(
        image: const DecorationImage(
          image: AssetImage("assets/images/oxford.jpg"),
          fit: BoxFit.cover,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}

class Rectangle821 extends StatelessWidget {
  const Rectangle821({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => RecommendationsPage()),
        );
      },
      child: Container(
        width: 335,
        height: 56,
        decoration: ShapeDecoration(
          color: const Color(0xFF24BAEC),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        alignment: Alignment.center,
        child: const Text(
          "View Recommendations",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
