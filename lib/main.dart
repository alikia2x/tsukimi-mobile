import 'package:flutter/material.dart';
import 'package:tsukimi/homepage.dart';
import 'package:tsukimi/pages/welcome.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'tsukimi',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        useMaterial3: true,
		scaffoldBackgroundColor: Colors.white,
		appBarTheme: const AppBarTheme(
			backgroundColor: Color.fromARGB(255, 255, 250, 235)
		),
		bottomNavigationBarTheme: const BottomNavigationBarThemeData(
			backgroundColor: Color.fromARGB(255, 255, 251, 240)
		),
		floatingActionButtonTheme: const FloatingActionButtonThemeData(
			backgroundColor: Color(0xFFFFB300),
			foregroundColor: Colors.white,
		),
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.indigo, brightness: Brightness.dark),
        useMaterial3: true,
		brightness: Brightness.dark,
		bottomNavigationBarTheme: BottomNavigationBarThemeData(
			selectedItemColor: Colors.amber[400],
		),
		floatingActionButtonTheme: FloatingActionButtonThemeData(
			backgroundColor: Colors.amber[600],
			foregroundColor: Colors.white,
		),
      ),
      themeMode: ThemeMode.system,
      home: const WelcomePage(),
    );
  }
}

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Notification Page'),
    );
  }
}

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Discover Page'),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Profile Page'),
    );
  }
}
