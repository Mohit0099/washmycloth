import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:washmyclothes/utils/constant/colors.dart';
import 'package:washmyclothes/utils/routes/routes.dart';
import 'package:washmyclothes/utils/routes/routes_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'First Method',
          theme: ThemeData(
            useMaterial3: true,
            appBarTheme: const AppBarTheme(
              color: AppColors.secondarymainColor,
              foregroundColor: Colors.black,
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: AppColors.secondarymainColor,
                statusBarIconBrightness: Brightness.light,
                statusBarBrightness: Brightness.light,
              ),
            ),
          ),
          initialRoute: RoutesName.loginsinnup,
          onGenerateRoute: Routes.generateRoute,
          // home: AppData(),
        );
      },

      // child: const Login(),
    );
  }
}
