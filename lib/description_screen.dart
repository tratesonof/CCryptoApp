import 'package:flutter/material.dart';
import 'cc_data.dart';

class DescriptionScreen extends StatelessWidget {
  DescriptionScreen(this.descriptionData);

  final CCData descriptionData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CC Description'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              '${descriptionData.name} (${descriptionData.symbol})',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 45),
            ),
            Text(
              'Price in Usd: \$${double.parse(descriptionData.priceUsd)
                  .toStringAsFixed(3)}',
              textAlign: TextAlign.left,
              overflow: TextOverflow.ellipsis,
              style:
              const TextStyle(fontWeight: FontWeight.bold, fontSize: 22.5),
            ),
          ],
        ),
      ),
    );
  }
}