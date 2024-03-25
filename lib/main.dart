import 'package:flutter/material.dart';
import 'package:page_web/trips.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final ValueNotifier<bool> darkMode = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {

    return ValueListenableBuilder<bool>(
        valueListenable: darkMode,
        builder: (context, value, child) {
          var darkModeTheme = value;

          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: darkModeTheme == false ?
            ThemeData(
              primaryColor:  const Color(0xFF031542),
              hintColor:  Color(0xFF463d90),
              secondaryHeaderColor: const Color(0xFF031542),
              textTheme: const TextTheme(
                bodyLarge: TextStyle(color: Colors.black),
                bodyMedium: TextStyle(color: Colors.white),
                bodySmall: TextStyle(color: Colors.grey)
              ),
              elevatedButtonTheme: ElevatedButtonThemeData(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed)) {
                        return const Color(0xFF03A9F4);
                      }
                      return const Color(0xFF2196F3);
                    },
                  ),
                ),
              ),
              sliderTheme: const SliderThemeData(
                valueIndicatorTextStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
              colorScheme: const ColorScheme(
                background:  Color(0xFF1b1e23),
                brightness: Brightness.dark,
                primary: Color(0xff9daec5),
                onPrimary: Colors.white,
                secondary:  Colors.white,
                onSecondary: Color(0xFF232c35),
                onError: Colors.blue,
                onBackground: Colors.white,
                onSurface: Colors.black,
                surface: Colors.black,
                error: Colors.red,
              ),
              iconTheme: const IconThemeData(
                  color: Colors.blue
              ),
              inputDecorationTheme: const InputDecorationTheme(
                filled: true,
                fillColor: Colors.white,
                  prefixIconColor: Colors.blue
              ),
            ) :
            ThemeData(
              primaryColor:  const Color(0xFF031542),
              hintColor:  const Color(0xFF463d90),
              secondaryHeaderColor: const Color(0xFF031542),
              textTheme: const TextTheme(
                bodyLarge: TextStyle(color: Colors.white),
                bodyMedium: TextStyle(color: Colors.black,),
                  bodySmall: TextStyle(color: Colors.grey)
              ),
              elevatedButtonTheme: ElevatedButtonThemeData(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed)) {
                        return const Color(0xFF03A9F4);
                      }
                      return const Color(0xFF2196F3);
                    },
                  ),
                ),
              ),
              sliderTheme: const SliderThemeData(
                valueIndicatorTextStyle: TextStyle(
                  color: Colors.black,
                ),
              ),
              colorScheme:  const ColorScheme(
                background: Color(0xff9daec5),
                brightness: Brightness.light,
                primary: Color(0xff9daec5),
                onPrimary: Colors.black,
                secondary:  Color(0xFF656565),
                onSecondary: Colors.white,
                onError: Colors.blue,
                onBackground: Colors.black,
                onSurface: Colors.black,
                surface: Colors.blue,
                error: Colors.red,
              ),
              iconTheme: const IconThemeData(
                  color: Colors.black
              ),
              inputDecorationTheme: const InputDecorationTheme(
                filled: true,
                fillColor: Colors.white,
                prefixIconColor: Colors.blue
              ),
            ),
            home: Trips(darkMode: darkMode,),
          );
        }
    );
  }
}

