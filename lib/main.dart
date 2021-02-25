import 'package:flutter/material.dart';
import 'package:skyline_template_app/ui/home_view.dart';
import 'package:skyline_template_app/core/services/navigation_service.dart';
import 'package:skyline_template_app/core/utilities/router.dart' as router;
import 'locator.dart';
import 'package:flutter/widgets.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  await setupLocator();
  runApp(MySkylineApp());
}

class MySkylineApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: locator<NavigationService>().navigationKey,
      onGenerateRoute: (settings) => router.Router.generateRoute(context, settings),
      home: HomeView(),
    );
  }
}
