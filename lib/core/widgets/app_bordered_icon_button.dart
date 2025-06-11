import 'package:barber_and_beauty_salon_booking_app/core/theme/colors.dart';
import 'package:barber_and_beauty_salon_booking_app/core/widgets/app_svg_viewer.dart';
import 'package:flutter/material.dart';

class AppBorderedIconButton extends StatelessWidget {
  const AppBorderedIconButton({
    super.key,
    required this.iconPath,
    this.onPressed,
  });

  final String iconPath;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.grayColor),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(
        onPressed: onPressed ?? () {},
        icon: AppSvgViewer(iconPath, width: 25),
      ),
    );
  }
}
