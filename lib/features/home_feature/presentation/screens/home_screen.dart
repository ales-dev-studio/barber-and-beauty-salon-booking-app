import 'package:barber_and_beauty_salon_booking_app/core/gen/assets.gen.dart';
import 'package:barber_and_beauty_salon_booking_app/core/widgets/app_scaffold.dart';
import 'package:barber_and_beauty_salon_booking_app/core/widgets/app_svg_viewer.dart';
import 'package:barber_and_beauty_salon_booking_app/features/home_feature/presentation/widgets/home_app_bar.dart';
import 'package:barber_and_beauty_salon_booking_app/features/home_feature/presentation/widgets/tabs/calendar_tab.dart';
import 'package:barber_and_beauty_salon_booking_app/features/home_feature/presentation/widgets/tabs/home_tab.dart';
import 'package:barber_and_beauty_salon_booking_app/features/home_feature/presentation/widgets/tabs/profile_tab.dart';
import 'package:barber_and_beauty_salon_booking_app/features/home_feature/presentation/widgets/tabs/search_tab.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final List<Widget> _tabs = [
    const HomeTab(),
    const SearchTab(),
    const CalendarTab(),
    const ProfileTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: _tabs[_currentIndex],
      appBar: _currentIndex == 0 ? HomeAppBar() : null,
      padding: EdgeInsets.zero,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withValues(alpha: 0.3),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        padding: EdgeInsets.only(top: 8, left: 8, right: 8),
        child: SalomonBottomBar(
          currentIndex: _currentIndex,
          onTap:
              (int index) => setState(() {
                _currentIndex = index;
              }),
          items: [
            bottomBarItem(
              iconPath: Assets.icons.home,
              title: 'Home',
              isSelected: _currentIndex == 0,
            ),
            bottomBarItem(
              iconPath: Assets.icons.searchNormal,
              title: 'Search',
              isSelected: _currentIndex == 1,
            ),
            bottomBarItem(
              iconPath: Assets.icons.calendar,
              title: 'Calendar',
              isSelected: _currentIndex == 2,
            ),
            bottomBarItem(
              iconPath: Assets.icons.user,
              title: 'Profile',
              isSelected: _currentIndex == 3,
            ),
          ],
        ),
      ),
    );
  }

  SalomonBottomBarItem bottomBarItem({
    required final String iconPath,
    required final String title,
    required final bool isSelected,
  }) => SalomonBottomBarItem(
    icon: Container(
      width: 34,
      height: 34,
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: EdgeInsets.all(4),
      child: Center(
        child: AppSvgViewer(
          iconPath,
          color: isSelected ? Colors.deepOrange : Colors.black,
          width: 18,
        ),
      ),
    ),
    title: Text(title),
    selectedColor: Colors.deepOrange,
  );
}
