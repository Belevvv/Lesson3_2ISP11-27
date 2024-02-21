import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 223, 214, 213),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 240, 110, 132),
        title: const Text('Добро Пожаловать!'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://media1.tenor.com/m/ZP3W1EEYpIYAAAAd/котик-коты.gif',
              width: 300,
              height: 350,
            ),
            const SizedBox(height: 150),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const RegistrationScreen()),
                );
              },
              child: const Text('Войти в аккаунт'),
            ),
            const SizedBox(height: 35),
            ElevatedButton(
              child: const Text('Зарегистрироваться'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const voiti()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 223, 214, 213),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 240, 110, 132),
        title: const Text('Авторизация'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: 'Логин',
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Пароль',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Войти'),
            ),
          ],
        ),
      ),
    );
  }
}

class voiti extends StatelessWidget {
  const voiti({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 223, 214, 213),
      appBar: AppBar(
         centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 240, 110, 132),
        title: const Text('Регистрация'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Имя',
                fillColor: Colors.black12,
              ),
            ),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Фамилия',
                fillColor: Colors.black12,
              ),
            ),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Почта',
                fillColor: Colors.black12,
              ),
            ),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Год рождения*',
                fillColor: Colors.black12,
              ),
            ),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Номер телефона*',
                fillColor: Colors.black12,
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Пароль',
                fillColor: Colors.black12,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Создать аккаунт'),
            ),
          ],
        ),
      ),
    );
  }
}
