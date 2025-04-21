import 'package:flutter/material.dart';
import 'dart:math';

class JenisBilanganView extends StatefulWidget {
  const JenisBilanganView({super.key});

  @override
  State<JenisBilanganView> createState() => _JenisBilanganViewState();
}

class _JenisBilanganViewState extends State<JenisBilanganView> {
  final TextEditingController _controller = TextEditingController();
  List<String> types = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Jenis Bilangan')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                hintText: 'Enter a number',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.numberWithOptions(decimal: true),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: analyzeNumber,
              child: const Text('Find Out'),
            ),
            const SizedBox(height: 24),
            if (types.isNotEmpty) ...[
              const Text(
                'The number is:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              ...types.map((type) => Text('• $type')).toList(),
            ],
          ],
        ),
      ),
    );
  }

  void analyzeNumber() {
    final input = _controller.text.trim();
    final number = double.tryParse(input);

    if (number == null) {
      setState(() {
        types = ['Invalid input'];
      });
      return;
    }

    List<String> result = [];

    if (number == number.floor()) {
      // It's an integer
      int intNumber = number.toInt();

      if (intNumber >= 0) result.add('Bilangan Cacah');
      if (intNumber > 0) result.add('Bilangan Bulat Positif');
      if (intNumber < 0) result.add('Bilangan Bulat Negatif');
      if (isPrime(intNumber)) result.add('Bilangan Prima');
    } else {
      result.add('Bilangan Desimal');
    }

    if (number > 0 && !result.contains('Bilangan Bulat Positif')) {
      result.add('Bilangan Positif');
    } else if (number < 0 && !result.contains('Bilangan Bulat Negatif')) {
      result.add('Bilangan Negatif');
    } else if (number == 0) {
      result.add('Bilangan Nol');
    }

    setState(() {
      types = result;
    });
  }

  bool isPrime(int n) {
    if (n < 2) return false;
    for (int i = 2; i <= sqrt(n).toInt(); i++) {
      if (n % i == 0) return false;
    }
    return true;
  }
}
