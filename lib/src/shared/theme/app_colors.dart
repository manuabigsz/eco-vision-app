import 'package:flutter/material.dart';

sealed class AppColors {
  // NOVA COR
  static const Color primary = Color(0xFF4d9b44);
  static const Color primaryDark = Color(0xFF205732);
  static const Color primayContainer = Color(0xFFF4F1F4);
  static const Color secondary = Color(0xFFBFA5A3);
  static const Color secondaryDark = Color(0xFF89726F);
  static const Color tertiary = Color(0xFFEAD073);
  static const Color yellow = Color(0xFFFFCD16);
  static const Color red = Color(0xFFBA1828);
  static const Color whiteBackground = Color(0xFFF6F8FA);

  static const Color seuCursoDigitalPrimary = Color(0xFF182888);
  static const Color seuCursoDigitalPrimaryDark = Color(0xFF141E58);
  static const Color seuCursoDigitalPrimayContainer =
      Color.fromARGB(255, 143, 184, 213);
  static const Color seuCursoDigitalSecondary = Color(0xFFEB9F4A);
  static const Color seuCursoDigitalSecondaryDark = Color(0xFFEB6920);
  static const Color seuCursoDigitalTertiary = Color(0xFFEAD073);
  static const Color seuCursoDigitalyellow = Color(0xFFFFCD16);
  static const Color seuCursoDigitalRed = Color(0xFFBA1828);
  static const Color seuCursoDigitalWhiteBackground = Color(0xFFF6F8FA);

  // Cores dos botões com bom contraste
  static const Color menuAndButtonColor =
      Color(0xFFFCCD16); // Amarelo principal
  static const Color buttonColor =
      Color(0xFFFFFFFF); // Branco para alto contraste

  // Outras cores
  static const Color blueTextColor = Color(0xFF003366);
  static const Color blueTextColor2 = Color(0xFF003459);
  static const Color blueTextColor3 = Color(0xFF00528C);
  static const Color mainGrayColor = Colors.grey;
  // ignore: use_full_hex_values_for_flutter_colors
  static const Color grayColor = Color(0xFF7E7E7E80);
  static final Color? grayColor2 = Colors.grey[10];
  static final Color newGrayColor = Color.fromRGBO(0, 0, 0, 0.1);
  static final Color mediumGrayTextColor = Color.fromRGBO(142, 142, 147, 1);
  static const Color darkGreyColor = Color(0xFF3A3A3A);
  static const Color white = Color(0xFFFFFFFF);
  static const Color whiteColor3 = Color(0xFFFBFBFB);
  static const Color whiteColor2 = Color(0xFFF6F8FA);
  static const Color whiteColor70 = Colors.white70;
  static const Color blackColor = Colors.black;
  static const Color blackColor54 = Colors.black54;
  static const Color blackColor12 = Colors.black12;
  static const Color blackColor87 = Colors.black87;
  static const Color blackColor26 = Colors.black26;
  static const Color blackColor45 = Colors.black45;
  static const Color mainYellowColor = Color(0xFFFCCD16);
  static const Color secondYellowColor = Color(0xFFEAD073);
  static const Color secondYellowColor2 = Color(0xFFE5BB14);
  static const Color secondYellowColor3 = Color(0xFFFFE082);
  static const Color orangeColor = Color(0xFFEB6920);
  static const Color orangeStatusColor = Color(0xFFEB9F4A);
  static const Color profileSettingsTextColor = Color(0xFF021D1B);
}
