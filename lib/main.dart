import 'package:barber_and_beauty_salon_booking_app/core/gen/fonts.gen.dart';
import 'package:barber_and_beauty_salon_booking_app/core/theme/colors.dart';
import 'package:barber_and_beauty_salon_booking_app/features/home_feature/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Barber and beauty salon booking app',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primaryColor,
          brightness: Brightness.light,
        ),
        fontFamily: FontFamily.aksharRegular,
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          titleTextStyle: TextStyle(fontSize: 20.0),
        ),
        bottomSheetTheme: const BottomSheetThemeData(
          elevation: 0,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
