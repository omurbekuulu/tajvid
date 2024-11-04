import 'package:flutter/material.dart';
import 'package:tajvid/presentation/pages/first_landing.dart';
import 'package:tajvid/presentation/pages/second_landing.dart';

class MainLanding extends StatelessWidget {
  const MainLanding({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF328E19),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/logo_book.png',
                width: 100,
              ),
              const SizedBox(height: 14),
              const Text(
                'Женил Тажвид',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 150),
              _buildCard(
                  title: 'Биринчи Модуль',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FirstLanding()),
                    );
                  }),
              const SizedBox(height: 20),
              _buildCard(
                  title: 'Экинчи Модуль',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SecondLanding()),
                    );
                  }),
              const SizedBox(height: 100),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'HAKKINDA',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCard({required String title, required Function() onTap}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: MaterialButton(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onPressed: onTap,
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
      ),
    );
  }
}
