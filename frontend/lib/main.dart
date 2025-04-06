import 'package:flutter/material.dart';
import 'second.dart';
import 'recommendations.dart'; // Add all other pages as needed
import 'calendar.dart';
import 'premium.dart';
// import 'search_page.dart';
// import 'messages_page.dart';
import 'profile.dart';
// import 'settings_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/second': (context) => const SecondPage(),
        '/recommendations': (context) => const RecommendationsPage(),
        '/calendar': (context) => const CalendarPage(),
        '/premium': (context) => const PremiumPage(),
        // '/search': (context) => const SearchPage(),
        // '/messages': (context) => const MessagesPage(),
        '/profile': (context) => ProfilePage(),
        // '/settings': (context) => const SettingsPage(),
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      if (!mounted) return;
      Navigator.pushReplacementNamed(context, '/second');
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('assets/images/guidemelogo.png'),
              width: 179,
              height: 179,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 20),
            Text(
              "Welcome to GuideMe!",
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
