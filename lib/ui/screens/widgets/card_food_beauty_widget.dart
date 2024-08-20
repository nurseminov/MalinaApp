import 'package:flutter/material.dart';
import 'package:malina_app/core/theme/app_fonts.dart';

class CardFoodBeautyWidget extends StatelessWidget {
  const CardFoodBeautyWidget({
    super.key, required this.title, required this.subtitle, required this.image
  });
  
  final String title;
  final String subtitle;
  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
          children: [
            const SizedBox(height: 10,),
            Stack(
              children: <Widget> [
                ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(image),
              ),
               Column(
                children: [
                  const SizedBox(height: 23,),
                  Text(title, style: AppFonts.w600s22,),
                  Text(subtitle, style: AppFonts.w300s16,),
                ],
              ),
              ]
            ),                   
          ],
      ),
    );
  }
}