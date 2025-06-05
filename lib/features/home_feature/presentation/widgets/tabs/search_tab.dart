import 'package:barber_and_beauty_salon_booking_app/core/theme/dimens.dart';
import 'package:barber_and_beauty_salon_booking_app/core/widgets/app_search_bar.dart';
import 'package:barber_and_beauty_salon_booking_app/features/home_feature/presentation/widgets/service_list.dart';
import 'package:barber_and_beauty_salon_booking_app/features/home_feature/presentation/widgets/service_title_widget.dart';
import 'package:barber_and_beauty_salon_booking_app/features/home_feature/presentation/widgets/top_categories.dart';
import 'package:flutter/material.dart';

class SearchTab extends StatelessWidget {
  const SearchTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AppSearchBar(),
          SizedBox(height: Dimens.largePadding),
          TopCategories(),
          SizedBox(height: Dimens.padding),
          ServiceTitleWidget(title: 'Recent', onPressed: () {}),
          ServiceList(),
          SizedBox(height: Dimens.padding),
          ServiceTitleWidget(title: 'Popular services', onPressed: () {}),
          ServiceList(),
          SizedBox(height: Dimens.padding),
          ServiceTitleWidget(title: 'Nearby beauty salon', onPressed: () {}),
          ServiceList(),
          SizedBox(height: Dimens.largePadding),
        ],
      ),
    );
  }
}
