import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';

// font
TextStyle themeTitle1 = GoogleFonts.poppins().copyWith(
  color: "#101213".toColor(),
  fontSize: 24,
  fontWeight: FontWeight.w600,
);

TextStyle themeTitle2 = GoogleFonts.poppins().copyWith(
  color: "#57636C".toColor(),
  fontSize: 22,
  fontWeight: FontWeight.w600,
);

TextStyle themeTitle3 = GoogleFonts.poppins().copyWith(
  color: "#101213".toColor(),
  fontSize: 20,
  fontWeight: FontWeight.w600,
);

TextStyle themeSubtitle1 = GoogleFonts.poppins().copyWith(
  color: "#101213".toColor(),
  fontSize: 18,
  fontWeight: FontWeight.w600,
);

TextStyle themeSubtitle2 = GoogleFonts.poppins().copyWith(
  color: "#57636C".toColor(),
  fontSize: 16,
  fontWeight: FontWeight.w600,
);

TextStyle themeSubtitle2White = GoogleFonts.poppins().copyWith(
  color: "#FFFFFF".toColor(),
  fontSize: 16,
  fontWeight: FontWeight.w600,
);

TextStyle themeBodyText1 = GoogleFonts.poppins().copyWith(
  color: "#101213".toColor(),
  fontSize: 14,
  fontWeight: FontWeight.w600,
);

TextStyle themeBodyText1Primary = GoogleFonts.poppins().copyWith(
  color: "#04A04A".toColor(),
  fontSize: 14,
  fontWeight: FontWeight.w600,
);

TextStyle themeBodyText2 = GoogleFonts.poppins().copyWith(
  color: "#57636C".toColor(),
  fontSize: 14,
  fontWeight: FontWeight.w600,
);

TextStyle themeBodyTextLight = GoogleFonts.poppins().copyWith(
  color: "#101213".toColor(),
  fontSize: 14,
  fontWeight: FontWeight.w500,
);

TextStyle themeBodyTextLightPrimary = GoogleFonts.poppins().copyWith(
  color: "#04A04A".toColor(),
  fontSize: 14,
  fontWeight: FontWeight.w500,
);

TextStyle themeBodyTextLightSecondary = GoogleFonts.poppins().copyWith(
  color: "#57636C".toColor(),
  fontSize: 14,
  fontWeight: FontWeight.w500,
);

final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  onPrimary: Colors.black87,
  primary: Colors.grey[300],
  minimumSize: Size(88, 36),
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
  ),
);
