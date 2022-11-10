import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:providerpractice/custom_bottom_navigation.dart';
import 'package:providerpractice/providers/auth_provider.dart';
import 'package:providerpractice/providers/count_provider.dart';
import 'package:providerpractice/providers/favourite_provider.dart';
import 'package:providerpractice/providers/slider_provider.dart';
import 'package:providerpractice/screens/count_screen.dart';
import 'package:providerpractice/screens/favourite/favourite_screen.dart';
import 'package:providerpractice/screens/login.dart';
import 'package:providerpractice/screens/slider_screen.dart';
import 'dashboard_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
     providers: [
       ChangeNotifierProvider(create: (_) => CountProvider() ),
       ChangeNotifierProvider(create: (_) => SliderProvider() ),
       ChangeNotifierProvider(create: (_) => FavouriteProvider() ),
       ChangeNotifierProvider(create: (_) => AuthProvider() ),

     ],
        child: ScreenUtilInit(
          designSize: const Size(360, 690),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,

              // You can use the library anywhere in the app even in theme

              home: child,
            );
          },
          // child: TestScreen(),
          child: const LoginScreen(),
        )
    );
  }
}
