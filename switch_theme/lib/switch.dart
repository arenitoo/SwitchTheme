//onPressed: () {
//             themeProvider.toggleTheme();
//            },

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:switch_theme/theme_provider.dart';

class SwitchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Switch Page'),
      ),
      body: Center(
        child: Switch(
          value: themeProvider.isPink,
          onChanged: (value) {
            themeProvider.toggleTheme();
          },
          activeColor: Colors.pink,
          activeTrackColor: Colors.pinkAccent,
          inactiveThumbColor: Colors.blue,
          inactiveTrackColor: Colors.blueAccent,
        ),
      ),
    );
  }
}
