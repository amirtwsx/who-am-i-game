import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('О приложении')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'О приложении',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              '“Who am I” — это весёлая игра-угадайка для двух игроков. '
              'Один игрок вводит слово (например, имя знаменитости), '
              'а другой должен угадать его, задавая вопросы с ответами "да", "нет" или "не знаю".',
            ),
            SizedBox(height: 20),
            Text(
              'Авторы',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Разработано [ИМЕНА УЧАСТНИКОВ] в рамках курса “Crossplatform Development” в Astana IT University.\n'
              'Преподаватель: Assistant Professor Abzal Kyzrkanov',
            ),
          ],
        ),
      ),
    );
  }
}
