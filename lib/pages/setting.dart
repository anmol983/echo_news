import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:news_app_/Services/PROVIDER.dart'; // Adjust this import based on your project structure

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 122, 165, 239),
        title: Text('Settings', style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Consumer<ThemeProvider>(
            builder: (context, themeProvider, child) {
              return Card(
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Dark Mode',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Transform.scale(
                        scale: 1.5, // Increase the size of the switch
                        child: Switch(
                          value: themeProvider.getTheme().brightness ==
                              Brightness.dark,
                          onChanged: (value) {
                            final provider = Provider.of<ThemeProvider>(context,
                                listen: false);
                            provider.setTheme(
                              value ? ThemeData.dark() : ThemeData.light(),
                            );
                          },
                          activeColor: Colors.blue,
                          inactiveThumbColor: Colors.grey,
                          inactiveTrackColor: Colors.grey[300],
                          activeTrackColor: Colors.lightBlueAccent,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
