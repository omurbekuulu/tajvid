import 'package:flutter/material.dart';

class SecondLanding extends StatelessWidget {
  const SecondLanding({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 38, 172, 76),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/logo_book.png',
                width: 100,
              ),
              const SizedBox(height: 12),
              const Text(
                'Экинчи Модуль',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 40),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 30),
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back_ios_new_rounded),
                      color: const Color.fromARGB(255, 38, 172, 76),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              const SizedBox(height: 40),
              _buildCard('Биринчи болук'),
              const SizedBox(height: 20),
              _buildCard('Экинчи болук'),
              const SizedBox(height: 20),
              _buildCard('Учунчу болук'),
              const SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCard(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/ornament_second.png',
              height: 80,
            ),
            Text(
              title,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
            Image.asset(
              'assets/ornament.png',
              height: 80,
            ),
          ],
        ),
      ),
    );
  }
}
