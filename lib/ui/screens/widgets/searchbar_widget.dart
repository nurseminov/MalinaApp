import 'package:flutter/material.dart';
import 'package:malina_app/core/assets/app_images.dart';
import 'package:malina_app/core/theme/app_colors.dart';
import 'package:malina_app/core/theme/app_fonts.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
          children: [
          const SizedBox(height: 50),
          Container(
            width: 350,
            height: 60,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(12)
            ),
            child:
            const SizedBox(
              width: 350,
              height: 60,
              child: Row(
                children: [
                  SizedBox(width: 15,),
                  ImageIcon(AssetImage(AppImages.searchIcon),),
                  SizedBox(width: 15,),
                  Text('Искать в Malina',
                   style: AppFonts.w400s14, selectionColor: AppColors.darkgrey,)
                ],
              )
            ),
           ),
          ],
      ),
    );
  }
}