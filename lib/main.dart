import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:sofol/view/screens/splash_screen/splash_screen.dart';

import 'di_container.dart' as di;

var storage;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();

  runApp(
    const MyApp(),
  );
}



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
    ));

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);



    return ScreenUtilInit(
        designSize: const Size(360, 800),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(

            debugShowCheckedModeBanner: false,
            title:'Sofol',
            theme: ThemeData(
              useMaterial3: true,
              primarySwatch: Colors.red,
            ),

            initialRoute: SplashScreen.routeName,
            getPages: [
              GetPage(name: SplashScreen.routeName, page: () => SplashScreen()),
              // GetPage(name: LoginScreen.routeName, page: () => LoginScreen()),

            ],
          );
        });
  }
}
