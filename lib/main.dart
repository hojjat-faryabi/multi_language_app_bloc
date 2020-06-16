import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:multi_language_app/home_page.dart';
import 'package:multi_language_app/translations.dart';

void main() async {
  
  WidgetsFlutterBinding.ensureInitialized();
  await translations.init('en');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Multi Language App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      localizationsDelegates: [GlobalMaterialLocalizations.delegate, GlobalWidgetsLocalizations.delegate],
      // supportedLocales: translations.supportedLocales(),
      supportedLocales: [
        Locale("fa", "IR"),
        Locale("en", "US"),
        Locale("fr", "FR"),
      ],
      home: HomePage(),
    );
  }
}
