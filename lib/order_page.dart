import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(title: Text('Order Page')),
      body: Form(
        child: Column(
          spacing: 16,
          children: [
            TextFormField(
              controller: makananController,
              decoration: const InputDecoration(labelText: 'Food Order'),
              validator: (value){
                if (value == null || value.isEmpty){
                  return 'Please enter your food order';
                }
                return null;
              },
            ),
            TextFormField(
              controller: minumanController,
              decoration: const InputDecoration(labelText: 'Drink Order'),
              validator: (value){
                if (value == null || value.isEmpty){
                  return 'Please enter your drink order';
                }
                return null;
              },
            ),
            TextFormField(
              controller: jumlahMakananController,
              decoration: const InputDecoration(labelText: 'Food QTY Order'),
              validator: (value){
                if (value == null || value.isEmpty){
                  return 'Please enter your qty of food order';
                }
                return null;
              },
            ),
            TextFormField(
              controller: jumlahMinumanController,
              decoration: const InputDecoration(labelText: 'Drink QTY Order'),
              validator: (value){
                if (value == null || value.isEmpty){
                  return 'Please enter your qty of drink order';
                }
                return null;
              },
            )
          ],
        )),
    );
  }
}