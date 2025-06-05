import 'package:barber_and_beauty_salon_booking_app/core/theme/colors.dart';
import 'package:barber_and_beauty_salon_booking_app/core/theme/dimens.dart';
import 'package:flutter/material.dart';

class TopCategories extends StatelessWidget {
  const TopCategories({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> topCategories = [
      'All',
      'Hair Salon',
      'Massage',
      'Barber',
      'Hairstyle',
      'Facial',
      'Manicure',
      'Hair Salon',
      'Massage',
      'Barber',
      'Hairstyle',
      'Facial',
      'Manicure',
    ];

    return SizedBox(
      height: 34.0,
      child: ListView.builder(
        itemCount: topCategories.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (final context, final index) {
          return Padding(
            padding: const EdgeInsets.only(left: Dimens.largePadding),
            child: InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(Dimens.corners),
              child: Container(
                decoration: BoxDecoration(
                  color: index == 0 ? AppColors.primaryColor : null,
                  borderRadius: BorderRadius.circular(Dimens.corners),
                  border: Border.all(
                    color:
                        index == 0
                            ? AppColors.primaryColor
                            : AppColors.grayColor,
                    width: 0.5,
                  ),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: Dimens.largePadding,
                ),
                child: Center(
                  child: Text(
                    topCategories[index],
                    style: TextStyle(
                      color:
                          index == 0
                              ? AppColors.whiteColor
                              : AppColors.blackColor,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
