import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        final isPortrait = orientation == Orientation.portrait;

        return Scaffold(
          appBar: AppBar(
            title: const Text('Who am I'),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: isPortrait
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: _buildButtons(context),
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: _buildButtons(context),
                    ),
            ),
          ),
        );
      },
    );
  }

  List<Widget> _buildButtons(BuildContext context) {
    return [
      ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/enter');
        },
        child: const Text('Начать игру'),
      ),
      const SizedBox(height: 20, width: 20),
      ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/about');
        },
        child: const Text('О приложении'),
      ),
      const SizedBox(height: 20, width: 20),
      ElevatedButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Настройки скоро будут')),
          );
        },
        child: const Text('Настройки'),
      ),
    ];
  }
}
