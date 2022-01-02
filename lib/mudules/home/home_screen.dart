import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(19.0),
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(19.9)),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  const Image(
                      width: 350.0,
                      height: 300.0,
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://www.pixsy.com/wp-content/uploads/2021/04/ben-sweet-2LowviVHZ-E-unsplash-1.jpeg')),
                  Container(
                    width: 350.0,
                    padding: const EdgeInsets.symmetric(vertical: 1.9),
                    color: Colors.blue.withOpacity(1),
                    child: const Text(
                      'Amr Nasser',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
