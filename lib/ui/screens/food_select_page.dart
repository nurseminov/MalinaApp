import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:malina_app/core/assets/app_images.dart';
import 'package:malina_app/core/theme/app_colors.dart';
import 'package:malina_app/core/theme/app_fonts.dart';

class FoodSelectPage extends StatelessWidget {
  const FoodSelectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.softgrey,
              appBar: AppBar(
                backgroundColor: AppColors.softgrey,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () => Navigator.of(context).pop(),
              ), 
              title: const Text("Корзина", style: AppFonts.w700s20),
              centerTitle: false,

             actions: <Widget>[
                  TextButton(
                    onPressed: () {},
                    child: const Text('очистить'),
                  ),
                  const SizedBox(width: 20)
                ],
            ),
              
          body:  Column(
            children: [
              SizedBox(
                width: 360,
                height: 40,
                child: Row(
                  children: [
                    const SizedBox(width: 10,),
                    ElevatedButton(
                      onPressed: () {}, 
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.pink,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Text('Доставка', style: AppFonts.w500s16,),
                      ),                      
                    ),

                    const SizedBox(width: 23,),
                    ElevatedButton(
                      onPressed: () {}, 
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.softgrey,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Text('В заведении', style: AppFonts.w500s16black),
                      ),                     
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 23,),

            Center(
              child: Container(
                width: 350,
                height: 326,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(20)),
                child:  Column(
                  children: [
                    const SizedBox(height: 10,),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text('   Bellagio Coffee  >', style: AppFonts.w400s16,)),
                      const Text('________________________________________________',
                      style: TextStyle(color: AppColors.darkgrey),
                      ),

                      Row(
                        children: [
                          const SizedBox(width: 20,),
                          ClipRRect(
                            child: Image.asset(AppImages.pizza),
                          ),
                           Column(
                            children: [
                              const Row(children: [
                                const SizedBox(width: 10,),
                              Text('Том ям', style: AppFonts.w500s16black,),
                              
                              SizedBox(width: 70,),
                              Text('250 C', style: AppFonts.w500s16black,)
                              ],),
                              const Text('Пицца с соусом том ям \n230 гр', style: AppFonts.w400s12,),
                              const SizedBox(height: 15,),
                              
                              Row(children: [
                                const SizedBox(width: 10,),
                                Container(
                                  width: 34,
                                  height: 34,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(9.44),
                                    color: AppColors.softgrey,
                                    shape: BoxShape.rectangle,
                                  ),
                                  child: IconButton(
                                    iconSize: 20,
                                    icon: const Icon(Icons.remove),
                                    onPressed: () {},
                                  ),
                                ),
                                const SizedBox(width: 15,),

                                const Text('1', style: AppFonts.w700s18,),
                                const SizedBox(width: 15,),

                                Container(
                                  width: 34,
                                  height: 34,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(9.44),
                                    color: AppColors.softgrey,
                                    shape: BoxShape.rectangle,
                                  ),
                                  child: IconButton(
                                    iconSize: 20,
                                    icon: const Icon(Icons.add),
                                    onPressed: () {},
                                  ),
                                ),
                                const SizedBox(width: 50,),

                                Container(
                                  width: 34,
                                  height: 34,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(9.44),
                                    color: AppColors.softgrey,
                                    shape: BoxShape.rectangle,
                                  ),
                                  child: IconButton(
                                    iconSize: 20,
                                    icon: const Icon(Icons.delete),
                                    onPressed: () {},
                                  ),
                                ),
                              ],),
                              
                            ],
                            
                          ),
                          
                          
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Container(
                      width: 310,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                          color: AppColors.softgrey,
                          shape: BoxShape.rectangle,
                          ),
                          child: const Row(children: [
                            SizedBox(width: 10,),
                            Icon(Icons.add_circle_rounded, color: Colors.green, size: 30,),
                            SizedBox(width: 10,),
                            Text('Добавки', style: AppFonts.w400s16,),

                          ],)
                      ),
                      const SizedBox(height: 20,),
                    Container(
                      width: 310,
                      height: 56,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                          color: AppColors.pink,
                          shape: BoxShape.rectangle,
                          ),
                          child: const Row(children: [
                            SizedBox(width: 15,),
                            Text('Заказать', style: AppFonts.w400s16White,),
                            SizedBox(width: 150,),
                            Text('250 С', style: AppFonts.w400s16White,),

                          ],)
                      ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}