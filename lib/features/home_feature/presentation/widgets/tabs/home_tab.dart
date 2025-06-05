import 'package:barber_and_beauty_salon_booking_app/core/widgets/app_search_bar.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AppSearchBar(),
        ],
      ),
    );
  }
}
