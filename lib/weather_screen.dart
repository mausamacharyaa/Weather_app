import 'dart:ui';

import 'package:flutter/material.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Weather Forecast', style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.refresh))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //main card
            SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 1, sigmaY: 3),
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      Text('300°F', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 18),
                      Icon(Icons.cloud, size: 75),
                      const SizedBox(height: 15),
                      Text('Rain', style: TextStyle(fontSize: 21)),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(height: 15),
            
            // w=text below the main sandbox
            const Text('Weather Forecast', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),

            const SizedBox(height: 10),

            //weather forecast card
            const Placeholder(fallbackHeight: 120),

            const SizedBox(height: 20),

            //bottom line
            const Placeholder(fallbackHeight: 120),
          ],
        ),
      ),
    );
  }
}
