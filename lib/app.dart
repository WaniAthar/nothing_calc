import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nothing_calc/controllers/home_screen_controller.dart';
import 'package:provider/provider.dart';
import 'views/screens/home_screen.dart';
import 'package:nothing_calc/constants/constants.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (context) => HomeScreenProvider())
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: "Calculator",
            theme: ThemeData(
                useMaterial3: true,
                primaryColor: AppColours.primary,
                primaryColorDark: AppColours.primary,
                scaffoldBackgroundColor: AppColours.background,
                appBarTheme:
                    AppBarTheme(backgroundColor: AppColours.background),
                textTheme: TextTheme(
                  bodyLarge: TextStyle(color: AppColours.onPrimary),
                  bodyMedium: TextStyle(color: AppColours.onPrimary),
                  bodySmall: TextStyle(color: AppColours.onPrimary),
                )),
            themeMode: ThemeMode.dark,
            home: HomeScreen(),
          ),
        );
      },
    );
  }
}
