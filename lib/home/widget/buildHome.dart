import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';
import 'package:heroicons/heroicons.dart';

import '../../config/theme.dart';

class BuildCard extends StatelessWidget {
  final String text;
  final String imageUrl;

  BuildCard(this.text, this.imageUrl, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, bottom: 20),
      child: Container(
        width: 150,
        height: 50,
        padding: const EdgeInsetsDirectional.fromSTEB(16, 12, 16, 12),
        decoration: BoxDecoration(
          color: "#FFFFFF".toColor(),
          borderRadius: BorderRadius.circular(12.5),
          border: Border.all(color: "#DADEE3".toColor()),
          boxShadow: [
            BoxShadow(
              offset: const Offset(2, 5),
              blurRadius: 4,
              spreadRadius: 0,
              color: Colors.grey.withOpacity(.1),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(imageUrl, height: 40, fit: BoxFit.cover),
            SizedBox(
              height: 10,
            ),
            Text(
              text,
              style: themeTitle4,
            ),
          ],
        ),
      ),
    );
  }
}

class IconBottomBar extends StatelessWidget {
  IconBottomBar(
      {Key? key,
      required this.text,
      required this.iconVar,
      required this.selected,
      required this.onPressed})
      : super(key: key);
  final String text;
  final iconVar;
  final bool selected;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: HeroIcon(
            iconVar,
            color: selected ? "#36B36E".toColor() : Colors.grey,
          ),
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: 14,
              height: .4,
              color: selected ? "#36B36E".toColor() : Colors.grey),
        )
      ],
    );
  }
}
