import 'package:mi_reserve/screens/testnavbar.dart';
import 'package:mi_reserve/services/google_service.dart';
import 'package:mi_reserve/services/room_service.dart';
import 'package:mi_reserve/widgets/navbar.dart';

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPageIndex = 1;

  static final Logger _logger = Logger();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(), //por eliminar
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 2, 66, 124),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: FutureBuilder<String>(
                    future: GoogleService.getData('nombre'),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return Text(
                          '${snapshot.data}',
                          style: const TextStyle(
                              fontSize: 20,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold),
                        );
                      } else if (snapshot.hasError) {
                        _logger.e('${snapshot.error}');
                        return const Text('Hola!');
                      } else {
                        return const CircularProgressIndicator();
                      }
                    },
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BottomNavigationApp()));
                  },
                  child: const Text('navbar'))
            ]),
          ),
        ));
  }
}
