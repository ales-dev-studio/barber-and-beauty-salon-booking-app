import 'package:barber_and_beauty_salon_booking_app/core/gen/fonts.gen.dart';
import 'package:barber_and_beauty_salon_booking_app/core/theme/dimens.dart';
import 'package:barber_and_beauty_salon_booking_app/core/widgets/app_view_all_button.dart';
import 'package:flutter/material.dart';

class ServiceTitleWidget extends StatelessWidget {
  const ServiceTitleWidget({
    super.key,
    required this.title,
    required this.onPressed,
  });

  final String title;
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: Dimens.largePadding,
        right: Dimens.smallPadding,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 14, fontFamily: FontFamily.aksharBold),
          ),
          AppViewAllButton(onPressed: onPressed),
        ],
      ),
    );
  }
}
