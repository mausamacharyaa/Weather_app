import 'package:flutter/material.dart';

class AdditinalInfoItem extends StatelessWidget {
  const AdditinalInfoItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Icon(Icons.water_drop,
        size:35 ,
        ),
           SizedBox(height: 8),
          Text('Humidity',),
          SizedBox(height: 6),
          Text('91',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          ),
      ],
    );
  }
}