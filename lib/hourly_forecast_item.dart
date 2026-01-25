import 'package:flutter/material.dart';

class HourlyForecast extends StatelessWidget {
  const HourlyForecast({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
                      elevation: 6,
                      child: Container(
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.all(8.0),
                        child: const Column(
                          children: [Text('03:00', style: TextStyle(
                            fontSize: 15,
                           fontWeight: FontWeight.bold),
                           ),
                            SizedBox(height: 8,),
                           Icon(Icons.cloud, size: 35,),
                            SizedBox(height: 8,),
                           Text('40°F', style: TextStyle(
                            fontSize: 18,
                            ),
                            ),
                            
                           ],
                        ),
                      ),
            );
  }
}