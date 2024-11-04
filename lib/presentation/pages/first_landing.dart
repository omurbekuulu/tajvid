import 'package:flutter/material.dart';
import 'package:tajvid/presentation/pages/last_landing.dart';

class FirstLanding extends StatelessWidget {
  const FirstLanding({super.key});

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
              const SizedBox(height: 12),
              const Text(
                'Биринчи Модуль',
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
                  const SizedBox(width: 25),
                  IconButton(
                    style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.white),
                    ),
                    icon: const Icon(
                      Icons.arrow_back_ios_new_rounded,
                      weight: 400,
                    ),
                    color: const Color.fromARGB(255, 38, 172, 76),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  const Spacer(),
                ],
              ),
              const SizedBox(height: 40),
              _buildCard(
                  title: 'Биринчи болук',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LastLanding()),
                    );
                  }),
              const SizedBox(height: 20),
              _buildCard(
                  title: 'Экинчи болук',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LastLanding()),
                    );
                  }),
              const SizedBox(height: 20),
              _buildCard(
                  title: 'Учунчу болук',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LastLanding()),
                    );
                  }),
              const SizedBox(height: 100),
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
