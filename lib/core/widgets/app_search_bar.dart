import 'package:barber_and_beauty_salon_booking_app/core/gen/assets.gen.dart';
import 'package:barber_and_beauty_salon_booking_app/core/theme/colors.dart';
import 'package:barber_and_beauty_salon_booking_app/core/theme/dimens.dart';
import 'package:barber_and_beauty_salon_booking_app/core/widgets/app_svg_viewer.dart';
import 'package:flutter/material.dart';

class AppSearchBar extends StatelessWidget {
  const AppSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Dimens.largePadding,
        vertical: Dimens.padding,
      ),
      child: SizedBox(
        height: 50,
        child: Card(
          elevation: 0,
          color: AppColors.cardColor,
          margin: EdgeInsets.zero,
          child: Padding(
            padding: const EdgeInsets.all(Dimens.padding),
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                hintText: 'Search for services...',
                hintStyle: TextStyle(color: AppColors.grayColor),
                prefixIcon: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: Dimens.mediumPadding,
                  ),
                  child: AppSvgViewer(Assets.icons.searchNormal, width: 14),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
