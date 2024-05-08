import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:switch_theme/theme_provider.dart';
import 'package:switch_theme/switch.dart';

class config extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Mudança de Cor de Ícone'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: Icon(Icons.face_2),
            color: themeProvider.isPink ? Colors.pink : Colors.blue,
            iconSize: 50.0,
            onPressed: () {
            },
          ),
          IconButton(
            icon: Icon(Icons.face_3),
            color: themeProvider.isPink ? Colors.pink : Colors.blue,
            iconSize: 50.0,
            onPressed: () {
            },
          ),
           IconButton(
            icon: Icon(Icons.face_4),
            color: themeProvider.isPink ? Colors.pink : Colors.blue,
            iconSize: 50.0,
            onPressed: () {
            },
          ),
          IconButton(
            icon: Icon(Icons.arrow_circle_down),
            iconSize: 50.0,
            onPressed: () {
             Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SwitchPage()),
            );
            },
          ),
        ],
      ),
    );
  }
}
