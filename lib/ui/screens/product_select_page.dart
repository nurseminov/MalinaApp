import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:malina_app/core/assets/app_images.dart';
import 'package:malina_app/core/theme/app_colors.dart';
import 'package:malina_app/core/theme/app_fonts.dart';

class ProductSelectPage extends StatelessWidget {
  const ProductSelectPage({super.key});

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
              
          body:  SingleChildScrollView(
            child: Column(
              
              children: [
                
              Center(
                child: Container(
                  width: 350,
                  height: 390,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(20)),
                  child:  Column(
                    children: [
                      const SizedBox(height: 10,),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text('   Hair  >', style: AppFonts.w400s16,)),
                        const Text('________________________________________________',
                        style: TextStyle(color: AppColors.darkgrey),
                        ),
            
                        Row(
                          children: [
                            const SizedBox(width: 20,),
                            ClipRRect(
                              child: Image.asset(AppImages.hadatShampoo),
                            ),
                             Column(
                              children: [
                                const Row(children: [
                                  SizedBox(width: 10,),
                                Text('Hadat Cosmetics', style: AppFonts.w500s16black,),
                                
                                SizedBox(width: 30,),
                                Text('1900 C', style: AppFonts.w500s16black,)
                                ],),
                                const Text('Шампунь интенсивно \nвосстанавливающий Hydro \nIntensive Repair Shampoo 250 мл', style: AppFonts.w400s12,),
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
                      Row(
                          children: [
                            const SizedBox(width: 20,),
                            ClipRRect(
                              child: Image.asset(AppImages.hadatConditioner),
                            ),
                             Column(
                              children: [
                                const Row(children: [
                                  SizedBox(width: 10,),
                                Text('Hadat Cosmetics', style: AppFonts.w500s16black,),
                                
                                SizedBox(width: 30,),
                                Text('2000 C', style: AppFonts.w500s16black,)
                                ],),
                                const Text('Увлажняющий кондиционер \n150 мл', style: AppFonts.w400s12,),
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
                              Text('3900 С', style: AppFonts.w400s16White,),
            
                            ],)
                        ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20,),
            
            
              Center(
                child: Container(
                  width: 350,
                  height: 270,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(20)),
                  child:  Column(
                    children: [
                      const SizedBox(height: 10,),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text('   Preen Beauty  >', style: AppFonts.w400s16,)),
                        const Text('________________________________________________',
                        style: TextStyle(color: AppColors.darkgrey),
                        ),
            
                        Row(
                          children: [
                            const SizedBox(width: 20,),
                            ClipRRect(
                              child: Image.asset(AppImages.lorealShampoo),
                            ),
                             Column(
                              children: [
                                const Row(children: [
                                  SizedBox(width: 10,),
                                Text('L’Oreal Paris \nElseve', style: AppFonts.w500s16black,),
                                
                                SizedBox(width: 30,),
                                Text('600 C', style: AppFonts.w500s16black,)
                                ],),
                                const Text('Шампунь для \nослабленных волос', style: AppFonts.w400s12,),
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
                              Text('3900 С', style: AppFonts.w400s16White,),
            
                            ],)
                        ),
                    ],
                  ),
                ),
              ),
                    ],
                  ),
          ),
    );
  }
}