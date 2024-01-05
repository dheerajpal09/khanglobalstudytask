import 'package:flutter/material.dart';
import 'package:khanglobalapp/page_routes/route_generate.dart';
import 'package:khanglobalapp/page_routes/routes.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return MaterialApp(
        title: 'Khan Global Studies',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blue),
        initialRoute: Routes.splashScreen,
        onGenerateRoute: RouteGenerator.generateRoute,
      );
    });
  }
}
