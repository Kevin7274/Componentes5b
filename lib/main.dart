// ignore_for_file: avoid_print

import 'package:componentes5b/screen/screens.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomeScreen(),
      initialRoute: '/', //ruta inicial
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => const HomeScreen(),
        'alert': (BuildContext context) => const AlertSreen(),
        'entradas': (BuildContext context) => const InputsSreen(),
        'camara': (BuildContext context) => const CameraSreen(),
        'firebase': (BuildContext context) => const FirebaseSreen(),
      },
      // Para tratar con rutas que no existen en el main.dart
      onGenerateRoute: (RouteSettings settings) {
        print('Ruta llamada: ${settings.name}');
        return MaterialPageRoute(
            builder: (BuildContext context) => const AlertSreen());
      },
    );
  }
}
