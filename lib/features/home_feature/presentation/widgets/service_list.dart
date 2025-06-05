import 'package:barber_and_beauty_salon_booking_app/core/gen/assets.gen.dart';
import 'package:barber_and_beauty_salon_booking_app/core/gen/fonts.gen.dart';
import 'package:barber_and_beauty_salon_booking_app/core/theme/colors.dart';
import 'package:barber_and_beauty_salon_booking_app/core/theme/dimens.dart';
import 'package:barber_and_beauty_salon_booking_app/core/widgets/app_light_text.dart';
import 'package:barber_and_beauty_salon_booking_app/core/widgets/app_svg_viewer.dart';
import 'package:flutter/material.dart';

class ServiceList extends StatelessWidget {
  const ServiceList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      Assets.images.hairStyle.path,
      Assets.images.hairCut.path,
      Assets.images.washingHair.path,
      Assets.images.womenHairStyle.path,
      Assets.images.hairStyle.path,
      Assets.images.hairCut.path,
      Assets.images.washingHair.path,
      Assets.images.womenHairStyle.path,
    ];
    final List<String> titles = [
      "Men's shaving",
      "Women's haircut",
      "Washing hair",
      "Brushing hair",
      "Men's shaving",
      "Women's haircut",
      "Washing hair",
      "Brushing hair",
    ];
    final List<String> addresses = [
      "939 8th Ave, New York, NY 10019",
      "W 56th St, New York, NY 10019",
      "939 8th Ave, New York, NY 10019",
      "W 56th St, New York, NY 10019",
      "939 8th Ave, New York, NY 10019",
      "W 56th St, New York, NY 10019",
      "939 8th Ave, New York, NY 10019",
      "W 56th St, New York, NY 10019",
    ];
    return SizedBox(
      height: 230,
      child: ListView.builder(
        itemCount: titles.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (final context, final index) {
          return Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.1),
                  spreadRadius: 0,
                  blurRadius: 10,
                ),
              ],
              borderRadius: BorderRadius.circular(Dimens.corners),
            ),
            padding: EdgeInsets.all(Dimens.padding),
            margin: EdgeInsets.symmetric(
              horizontal: index == 0 ? Dimens.largePadding : Dimens.padding,
              vertical: Dimens.padding,
            ),
            child: Column(
              spacing: Dimens.padding,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 182,
                  height: 114,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(Dimens.corners),
                    child: Image.asset(images[index], fit: BoxFit.cover),
                  ),
                ),
                Text(
                  titles[index],
                  style: TextStyle(fontFamily: FontFamily.aksharMedium),
                ),
                AppLightText(addresses[index]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppLightText('486 Reviews'),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(Dimens.corners),
                      ),
                      padding: EdgeInsets.all(2),
                      child: AppSvgViewer(
                        Assets.icons.arrowRight,
                        color: AppColors.whiteColor,
                        width: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
