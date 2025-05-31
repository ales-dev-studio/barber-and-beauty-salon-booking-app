import 'package:barber_and_beauty_salon_booking_app/core/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Center(
        child: Text('Home Screen'),
      ),
    );
  }
}
