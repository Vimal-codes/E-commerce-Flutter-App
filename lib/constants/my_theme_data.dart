// import 'package:flutter/material.dart';
//
// class MyThemeData {
//   // Define colors based on Figma design
//   static const Color primaryColor = Color(0xFF4F7B39); // Green
//   static const Color secondaryColor = Color(0xFFA3C653); // Light Green
//   static const Color backgroundColor = Color(0xFFFFFFFF); // White
//   static const Color errorColor = Color(0xFFD32F2F); // Red
//   static const Color textColor = Color(0xFF333333); // Dark Gray
//
//   static final ThemeData lightTheme = ThemeData.light().copyWith(
//     colorScheme: ColorScheme.light(
//       primary: primaryColor,
//       secondary: secondaryColor,
//       surface: Colors.white,
//       error: errorColor,
//       onPrimary: Colors.white, // Text on primary color
//       onSecondary: Colors.white, // Text on secondary color
//       onBackground: textColor, // Text on background color
//       onError: Colors.white, // Text on error color
//       onSurface: textColor, // Default text color
//     ),
//     textTheme: ThemeData.light().textTheme.apply(
//       bodyColor: textColor,
//       displayColor: textColor,
//     ),
//     scaffoldBackgroundColor: backgroundColor,
//   );
//
//   static final ThemeData darkTheme = ThemeData.dark().copyWith(
//     colorScheme: ColorScheme.dark(
//       primary: primaryColor,
//       secondary: secondaryColor,
//       surface: Colors.grey[900],
//       error: errorColor,
//       onPrimary: Colors.white,
//       onSecondary: Colors.white,
//       onBackground: Colors.white,
//       onError: Colors.white,
//       onSurface: Colors.white,
//     ),
//     textTheme: ThemeData.dark().textTheme.apply(
//       bodyColor: Colors.white,
//       displayColor: Colors.white,
//     ),
//     scaffoldBackgroundColor: Colors.black,
//   );
// }
