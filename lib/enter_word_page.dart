import 'package:flutter/material.dart';
import 'guess_page.dart';

class EnterWordPage extends StatefulWidget {
  const EnterWordPage({super.key});

  @override
  State<EnterWordPage> createState() => _EnterWordPageState();
}

class _EnterWordPageState extends State<EnterWordPage> {
  final TextEditingController _controller = TextEditingController();
  String? _enteredWord;
  bool _submitted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Введите слово')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: _submitted
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Слово сохранено: "$_enteredWord"',
                    style: const TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 20),
                  const Text('Передайте устройство Игроку 2'),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              GuessPage(word: _enteredWord ?? ''),
                        ),
                      );
                    },
                    child: const Text('Продолжить'),
                  ),
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Игрок 1: введите слово, которое должен угадать Игрок 2',
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Например: Том Круз',
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _enteredWord = _controller.text.trim();
                        _submitted = true;
                      });
                    },
                    child: const Text('Сохранить слово'),
                  ),
                ],
              ),
      ),
    );
  }
}
