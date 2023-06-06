import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: 390,
          height: 844,
          color: const Color.fromRGBO(255, 255, 255, 1),
          child: Column(
            children: <Widget>[
              Container(
                width: 390,
                height: 89,
                margin: const EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      offset: Offset(0, 10),
                      blurRadius: 15,
                    ),
                  ],
                  color: const Color.fromRGBO(70, 121, 255, 1),
                ),
                child: const Center(
                  child: Text(
                    'Settings',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Gudea',
                      fontSize: 24,
                      letterSpacing: 0,
                      fontWeight: FontWeight.normal,
                      height: 1,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SettingItem(
                title: 'Settings #1',
                description: 'description',
              ),
              const SizedBox(height: 20),
              SettingItem(
                title: 'Settings #2',
                description: 'description',
              ),
              const SizedBox(height: 20),
              SettingItem(
                title: 'Settings #3',
                description: 'description',
              ),
              const SizedBox(height: 20),
              SettingItem(
                title: 'Settings #4',
                description: 'description',
              ),
              const SizedBox(height: 20),
              SettingItem(
                title: 'Settings #5',
                description: 'description',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SettingItem extends StatelessWidget {
  final String title;
  final String description;

  SettingItem({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 365,
      height: 77,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 10),
            child: Text(
              title,
              style: const TextStyle(
                color: Color.fromRGBO(69, 69, 69, 1),
                fontFamily: 'Gudea',
                fontSize: 20,
                letterSpacing: 0,
                fontWeight: FontWeight.normal,
                height: 1,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 5),
            child: Text(
              description,
              style: const TextStyle(
                color: Color.fromRGBO(69, 69, 69, 1),
                fontFamily: 'Gudea',
                fontSize: 14,
                letterSpacing: 0,
                fontWeight: FontWeight.normal,
                height: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
