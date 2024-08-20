
import 'package:flutter/material.dart';
import 'package:malina_app/core/assets/app_images.dart';
import 'package:malina_app/core/theme/app_colors.dart';
import 'package:malina_app/core/theme/app_fonts.dart';
import 'package:malina_app/ui/screens/widgets/card_food_beauty_widget.dart';
import 'package:malina_app/ui/screens/widgets/scanner_widget.dart';
import 'package:malina_app/ui/screens/widgets/searchbar_widget.dart';
import 'package:malina_app/ui/screens/widgets/soon_in_malin_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> 
{

  

  @override
  Widget build(BuildContext context) {
    return    MaterialApp(
      home: Scaffold(
        backgroundColor: AppColors.softgrey,
        body: SingleChildScrollView(
          child: 
          Column(
            children: [
              const SearchBarWidget(),

              const ScannerWidget(),

              const CardFoodBeautyWidget(
                title: 'Еда', 
                subtitle: '      Из кафе и \n      ресторанов', 
                image:  AppImages.food,
              ),

              const CardFoodBeautyWidget(
                title: '', 
                subtitle: '', 
                image:  AppImages.beauty,
              ),

              const Align(
                alignment: Alignment.centerLeft,
                child: Text('      Скоро в Malina', 
                style: AppFonts.w500s17,
                ),
              ),
              const SizedBox(height: 10,),

              SizedBox(
                height: 86,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children:  const [
                    SizedBox(width: 23,),

                    SoonInMalinaWidget(
                      title: 'Вакансии', 
                      color: AppColors.lightBlue,
                    ),

                    SizedBox(width: 10,),

                    SoonInMalinaWidget(
                      title: 'Маркет', 
                      color: AppColors.lightOrange,
                    ),
                    SizedBox(width: 10,),

                    SoonInMalinaWidget(
                      title: 'Цветы', 
                      color: AppColors.lightPink,
                    ),
                    SizedBox(width: 10,),

                    SoonInMalinaWidget(
                      title: 'Спорт', 
                      color: AppColors.lightBlue,
                    ),
                    SizedBox(width: 10,),

                    SoonInMalinaWidget(
                      title: 'Маркет', 
                      color: AppColors.lightOrange,
                    ),
                    SizedBox(width: 10,),

                    SoonInMalinaWidget(
                      title: 'Маркет', 
                      color: AppColors.lightPink,
                    ),
                    SizedBox(width: 10,),

                  ],
                ),
              ),
              const SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}


