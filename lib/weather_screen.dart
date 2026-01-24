import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/additional_info_item.dart' show AdditinalInfoItem;
import 'package:flutter_application_1/hourly_forecast_item.dart' show HourlyForecast;

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

            const SizedBox(height: 24),

            // w=text below the main sandbox
            const Text('Weather Forecast', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),

            const SizedBox(height: 9),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                    HourlyForecast(),
                    HourlyForecast(),
                    HourlyForecast(),
                    HourlyForecast(),
                    HourlyForecast(),
                    HourlyForecast(),
                ],
              ),
            ),
            
            //bottom line
            const SizedBox(height: 23),
            const Text(
              'Additional Information',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
                ),
              ),

              const SizedBox(height: 20),

            Row(
              children: [
                AdditinalInfoItem(),
                AdditinalInfoItem(),
                AdditinalInfoItem(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}




