import 'package:flutter/material.dart';

class GuessPage extends StatefulWidget {
  final String word;
  const GuessPage({super.key, required this.word});

  @override
  State<GuessPage> createState() => _GuessPageState();
}

class _GuessPageState extends State<GuessPage> {
  final List<String> _questions = [];
  final TextEditingController _controller = TextEditingController();

  void _addQuestion() {
    final question = _controller.text.trim();
    if (question.isNotEmpty) {
      setState(() {
        _questions.add(question);
        _controller.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Игрок 2: Угадай слово')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('Вопросы для слова: "${widget.word}"'),
            const SizedBox(height: 10),
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                hintText: 'Введите вопрос',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: _addQuestion,
              child: const Text('Задать вопрос'),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: _questions.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_questions[index]),
                    subtitle: const Text('Ответьте: ✅ Да / ❌ Нет / 🤔 Не знаю'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
