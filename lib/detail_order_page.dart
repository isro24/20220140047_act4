import 'package:flutter/material.dart';

class DetailOrderPage extends StatelessWidget {
  const DetailOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail Order Page')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Food Ordeer: $makanan'),
            Text('Drink Order: $minuman'),
            Text('Food QTY Order: $jumlahMakanan'),
            Text('Drink QTY Order: $jumlahMinuman'),
            Text('Total Price: $totalHarga'),

            const SizedBox(height: 20);
            ElevatedButton(
              onPressed: (){
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                  (route) => false,
                );
              }, 
              child: Text('Finish Order'))
          ],
        )
      ),
    );
  }
}