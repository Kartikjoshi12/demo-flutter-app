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
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: Splachscreen(),
    );
  }
}
