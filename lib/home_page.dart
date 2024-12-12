import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: Theme.of(context).textTheme.displayMedium,
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: ListView(
        children: [
          Center(
            child: Container(
              constraints: const BoxConstraints(
                minWidth: 300,
                maxWidth: 600,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 128.0),
                    child: Text(
                      'Play some of our favorite games!',
                      style: Theme.of(context).textTheme.headlineMedium,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: 128,
                            color: Colors.orange,
                            child: Center(
                              child: Container(color: Colors.blue),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '2048',
                                style: Theme.of(context).textTheme.displaySmall,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 200.0),
                  Text(
                    'More games coming soon!',
                    style: Theme.of(context).textTheme.headlineSmall,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
