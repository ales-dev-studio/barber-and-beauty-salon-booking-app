import 'package:barber_and_beauty_salon_booking_app/core/gen/assets.gen.dart';
import 'package:barber_and_beauty_salon_booking_app/core/theme/colors.dart';
import 'package:barber_and_beauty_salon_booking_app/core/theme/dimens.dart';
import 'package:barber_and_beauty_salon_booking_app/core/widgets/app_svg_viewer.dart';
import 'package:flutter/material.dart';

class AppListTile extends StatelessWidget {
  const AppListTile({
    super.key,
    required this.onTap,
    required this.title,
    required this.leadingIconPath,
    this.trailing,
  });

  final GestureTapCallback onTap;
  final String title;
  final String leadingIconPath;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Dimens.largePadding),
      child: Ink(
        height: 51,
        decoration: BoxDecoration(
          color: AppColors.cardColor,
          borderRadius: BorderRadius.circular(Dimens.corners),
        ),
        child: ListTile(
          onTap: onTap,
          title: Text(title, style: TextStyle(fontSize: 15)),
          leading: AppSvgViewer(leadingIconPath, width: 19),
          trailing:
              trailing ?? AppSvgViewer(Assets.icons.arrowRightIos, width: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Dimens.corners),
          ),
        ),
      ),
    );
  }
}
