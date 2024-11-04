import 'package:flutter/material.dart';
import 'package:tajvid/presentation/pages/info.dart';

class LastLanding extends StatelessWidget {
  const LastLanding({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: const Color(0xFF328E19),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: 0,
                child: Opacity(
                  opacity: 0.7,
                  child: Image.asset(
                    'assets/top_ornament.png',
                    scale: 1.4,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Image.asset(
                  'assets/bottom_ornament.png',
                  scale: 1.4,
                ),
              ),
              Positioned.fill(
                child: ListView.builder(
                  itemCount: 29,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return const SizedBox(height: 180);
                    }
                    return Center(
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Info(),
                              ));
                        },
                        child: Text(
                          'chapter $index',
                          style: TextStyle(color: Colors.white, fontSize: 26),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Positioned(
                top: 140,
                left: 25,
                child: IconButton(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
