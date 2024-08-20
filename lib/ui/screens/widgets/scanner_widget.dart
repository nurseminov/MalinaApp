
import 'package:flutter/material.dart';
import 'package:malina_app/core/assets/app_images.dart';
import 'package:malina_app/core/theme/app_colors.dart';
import 'package:malina_app/core/theme/app_fonts.dart';
import 'package:malina_app/ui/screens/scanner_page.dart';

class ScannerWidget extends StatelessWidget {
  const ScannerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
          children: [
          const SizedBox(height: 30),
          GestureDetector(

            onTap: (){
             Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  const ScanPage(title: 'Сканнер QR',)),
                  );
           },

            child: Container(
              width: 350,
              height: 90,
              decoration: BoxDecoration(
                color: AppColors.pink,
                borderRadius: BorderRadius.circular(12)
              ),
              child:
              const SizedBox(
                width: 350,
                height: 60,
                child: Row(
                  children: [
                    SizedBox(width: 20,),
                    SizedBox(
                      height: 58.0,
                      width: 26.0,
                      child: ImageIcon(AssetImage(AppImages.scannerIcon,
                      ),
                      color: AppColors.white,
                      ),
                    ),
                    SizedBox(width: 15,),
                    Text('Сканируй QR-код и заказывай \nпрямо на заведений',
                    style: AppFonts.w500s16, selectionColor: AppColors.white,)
                  ],
                )
              ),
            ),
          ),
          const SizedBox(height: 15),
          ],
      ),
    );
  }
}