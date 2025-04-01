
import 'package:example/forgot_password.dart';
import 'package:flutter/material.dart';
import 'next_screen.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: screenHeight * 0.05),
            IconButton(
              icon: Icon(Icons.arrow_back, size: 30),
              onPressed: () => Navigator.pop(context),
            ),
            Center(
              child: Image.asset(
                'assets/images/logo.png', // logo path
                width: screenWidth * 0.3,
                height: screenWidth * 0.3,
              ),
            ),
            SizedBox(height: screenHeight * 0.03),
            Center(
              child: Text(
                ' Sign In',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.05),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xFFF6F6F8),
                hintText: 'Enter your email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                  borderSide: BorderSide.none,
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 18),
              ),
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(height: screenHeight * 0.02),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xFFF6F6F8),
                hintText: 'Enter your password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                  borderSide: BorderSide.none,
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 18),
              ),
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(height: screenHeight * 0.02),
            Center(
              child: Text(
                'Password must be 8 characters',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(height: screenHeight * 0.05),
            SizedBox(
              width: double.infinity,
              height: 56,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF24BAEC),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NextScreen()),
                  );
                },
                child: Text(
                  'Sign In',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.03),
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ForgotPassword()),
                  );
                },
                child: Text(
                  'Forgot password?',
                  style: TextStyle(fontSize: 16, color: Colors.red),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
