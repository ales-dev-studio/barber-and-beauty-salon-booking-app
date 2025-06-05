import 'package:barber_and_beauty_salon_booking_app/core/gen/assets.gen.dart';
import 'package:barber_and_beauty_salon_booking_app/core/gen/fonts.gen.dart';
import 'package:barber_and_beauty_salon_booking_app/core/theme/colors.dart';
import 'package:barber_and_beauty_salon_booking_app/core/theme/dimens.dart';
import 'package:barber_and_beauty_salon_booking_app/core/widgets/app_svg_viewer.dart';
import 'package:flutter/material.dart';

class AppViewAllButton extends StatelessWidget {
  const AppViewAllButton({super.key, required this.onPressed});

  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Row(
        spacing: Dimens.smallPadding,
        children: [
          Text(
            'View all',
            style: TextStyle(
              color: AppColors.primaryColor,
              fontFamily: FontFamily.aksharMedium,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(Dimens.corners),
            ),
            padding: EdgeInsets.all(2),
            child: AppSvgViewer(
              Assets.icons.arrowRightIos,
              color: AppColors.whiteColor,
              width: 16,
            ),
          ),
        ],
      ),
    );
  }
}
