import 'package:barber_and_beauty_salon_booking_app/core/gen/assets.gen.dart';
import 'package:barber_and_beauty_salon_booking_app/core/theme/dimens.dart';
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
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(
              top: Dimens.padding,
              left: Dimens.largePadding,
              right: Dimens.largePadding,
            ),
            child: Assets.images.banner.image(fit: BoxFit.fitWidth),
          ),
        ],
      ),
    );
  }
}
