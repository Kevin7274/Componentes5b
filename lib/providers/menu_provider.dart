// ignore_for_file: avoid_print

import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class _MenuProvider {
  List<dynamic> options = [];
  _MenuProvider() {
    //loadData();
  }

//loadData(){
  // rootBundle.loadString('data/menu_opciones.json').then((data){
  //  print(data);
  // Map dataMap = json.decode(data);
  // print(dataMap);
  // print(dataMap['nombreApp']);
  // print(dataMap['rutas']);

  //options = dataMap[rutas];

  // });

//}

  Future<List<dynamic>> loadData() async {
    final respuesta = await rootBundle.loadString('data/menu_opciones.json');
    Map dataMap = json.decode(respuesta);
    print(dataMap['rutas']);
    options = dataMap['rutas'];
    return options;
  }
}

final menuProvider = _MenuProvider();
