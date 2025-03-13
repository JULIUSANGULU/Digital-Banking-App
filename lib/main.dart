import 'package:digital_banking_app/Routes/routers.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // Ensures Flutter is initialized before Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Removes the debug banner
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.blue,
        fontFamily: 'Open Sans', // Set default font
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue, // Ensures consistency across widgets
          primary: Colors.blue, // Explicitly set primary color
        ),
        useMaterial3: true, // Optional: Enables Material 3 styling
      ),
      initialRoute: AppRoutes.onboarding, // Set initial route
      onGenerateRoute: AppRoutes.generateRoute, // Use route generator
    );
  }
}
