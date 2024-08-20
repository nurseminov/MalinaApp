import 'package:flutter/material.dart';
import 'package:malina_app/core/theme/app_fonts.dart';

class SoonInMalinaWidget extends StatelessWidget {
  const SoonInMalinaWidget({
     super.key, required this.title, required this.color
  });
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 86,
      height: 86,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10)
      ),
      child:
       Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(title,
          style: AppFonts.w400s12,
          ),
        ),
      ),
    );
  }
}