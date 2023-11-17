import 'package:expenses/Theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'expenses.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  // ]).then((fn) {
    runApp(
      MaterialApp(
        darkTheme: ThemeData.dark().copyWith(
          useMaterial3: true,
          colorScheme: kDarkColorScheme,
          appBarTheme: ThemeData().appBarTheme.copyWith(
                foregroundColor: kDarkColorScheme.onPrimaryContainer,
                backgroundColor: kDarkColorScheme.primaryContainer,
              ),
          cardTheme: ThemeData().cardTheme.copyWith(
                color: kDarkColorScheme.secondaryContainer,
                margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              ),
        ),
        theme: ThemeData().copyWith(
          useMaterial3: true,
          colorScheme: kColorScheme,
          appBarTheme: ThemeData().appBarTheme.copyWith(
                foregroundColor: kColorScheme.onPrimaryContainer,
                backgroundColor: kColorScheme.primaryContainer,
              ),
          cardTheme: ThemeData().cardTheme.copyWith(
                color: kColorScheme.secondaryContainer,
                margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              ),
          textTheme: ThemeData().textTheme.copyWith(
                titleLarge: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: kColorScheme.onSecondaryContainer,
                    fontSize: 24),
              ),
        ),
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        home: const Expenses(),
      ),
    );
  // });
}
