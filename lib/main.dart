import 'package:flutter/material.dart';
import 'package:myapp/pracfol/SplachScreen.dart';
import 'package:myapp/provider/count_provider.dart';
import 'package:myapp/provider/favourite_provider.dart';
import 'package:myapp/provider/slider_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CountProvider()),
        ChangeNotifierProvider(create: (_) => SliderValueProvider()),
        ChangeNotifierProvider(create: (_) => FavouriteValueprovider()),

      ],

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: Splachscreen(),
      ),
    );
  }
}
