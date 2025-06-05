import 'package:barber_and_beauty_salon_booking_app/core/gen/assets.gen.dart';
import 'package:barber_and_beauty_salon_booking_app/core/gen/fonts.gen.dart';
import 'package:barber_and_beauty_salon_booking_app/core/theme/colors.dart';
import 'package:barber_and_beauty_salon_booking_app/core/theme/dimens.dart';
import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      Assets.icons.hairDye.path,
      Assets.icons.bodyMassage.path,
      Assets.icons.womanHair.path,
      Assets.icons.facialMassage.path,
      Assets.icons.manicure.path,
      Assets.icons.hairDye.path,
      Assets.icons.bodyMassage.path,
      Assets.icons.womanHair.path,
      Assets.icons.facialMassage.path,
      Assets.icons.manicure.path,
    ];
    final List<String> titles = [
      'Hair Dye',
      'Massage',
      'Haircut',
      'Facial',
      'Manicure',
      'Hair Dye',
      'Massage',
      'Haircut',
      'Facial',
      'Manicure',
    ];
    return SizedBox(
      height: 100,
      child: ListView.builder(
        itemCount: titles.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (final context, final index) {
          return Column(
            spacing: Dimens.padding,
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimens.corners),
                  color: AppColors.secondColor,
                ),
                padding: EdgeInsets.all(Dimens.largePadding),
                margin: EdgeInsets.symmetric(
                  horizontal: index == 0 ? Dimens.largePadding : Dimens.padding,
                ),
                child: Center(child: Image.asset(images[index])),
              ),
              Text(
                titles[index],
                style: TextStyle(fontFamily: FontFamily.aksharMedium),
              ),
            ],
          );
        },
      ),
    );
  }
}
