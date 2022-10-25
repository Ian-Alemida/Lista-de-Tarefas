import 'package:flutter/material.dart';
import 'package:primeiro_projeto/Components/Task.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {

  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text('Tarefas'),
      ),
      body: AnimatedOpacity(
        opacity: opacidade ? 1 : 0,
        duration: const Duration(milliseconds: 600),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: const [
            Task(
                'Aprender flutter',
                'Assets/Images/flutter.png',
                2),
            Task(
                'Meditar',
                'Assets/Images/meditar.webp',
                4),
            Task(
                'Ler o caibalion',
                'Assets/Images/Caibalion.jpeg',
                3),
            Task(
                'Andar de bike',
                'Assets/Images/bike.jpg',
                1),
            Task(
                'Academia',
                'Assets/Images/musculacao-holdfit.webp',
                3),
            SizedBox(height: 60,)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          opacidade = !opacidade;
        });
      }),
    );
  }
}