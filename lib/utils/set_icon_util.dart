import 'package:flutter/material.dart';

class SetIconsUtil {
  final _icons = <String, IconData>{
    'add_alert': Icons.add_alert,
    'input': Icons.input,
    'camera': Icons.camera_alt_outlined,
    'data': Icons.data_exploration_outlined,
  };

  Icon getIcon(String iconName) {
    return Icon(_icons['iconName'], color: Colors.indigo);
  }
}
