import 'package:flutter/material.dart';
import 'package:myapp/pracfol/SplachScreen.dart';
import 'package:myapp/provider/Theme_provider.dart';
import 'package:myapp/provider/count_provider.dart';
import 'package:myapp/provider/favourite_provider.dart';
import 'package:myapp/provider/slider_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CountProvider()),
        ChangeNotifierProvider(create: (_) => SliderValueProvider()),
        ChangeNotifierProvider(create: (_) => FavouriteValueprovider()),
        ChangeNotifierProvider(create: (_) => ThemeChangeProvider()),
      ],
      child: const MyApp(), // 👈 now MyApp can safely access all providers
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeChangeProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,

      themeMode: themeProvider.themeMode,

      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: const Color(0xFF1E88E5), // custom blue
        scaffoldBackgroundColor: const Color(0xFFF9FAFB),
        fontFamily: 'Poppins',
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFF1E88E5),
        ), // soft white
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1E88E5),
          foregroundColor: Colors.white,
          titleTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color(0xFFFF7043), // orange
        ),
      ),

      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: const Color(0xFFBB86FC), // purple shade
        scaffoldBackgroundColor: const Color(0xFF121212), // dark background
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 66, 57, 76),
          foregroundColor: Colors.white,
          titleTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color(0xFF03DAC6), // teal accent
        ),
      ),
      home: Splachscreen(),
    );
  }
}
