import 'package:bjc_games/footer.dart';
import 'package:flutter/material.dart';
import 'package:twenty_forty_eight/game_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: Theme.of(context).textTheme.displaySmall,
        // centerTitle: false,
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: CustomScrollView(
        slivers: [
          // Padding(
          //   padding: const EdgeInsets.all(16.0),
          //   child: Center(
          //     child: Text(
          //       title,
          //       style: Theme.of(context)
          //           .textTheme
          //           .displayLarge
          //           ?.copyWith(fontSize: 120.0),
          //     ),
          //   ),
          // ),
          SliverToBoxAdapter(
            child: Center(
              child: Container(
                constraints: const BoxConstraints(
                  minWidth: 300,
                  maxWidth: 600,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 100.0),
                      child: Text(
                        'Play some of our favorite games!',
                        style: Theme.of(context).textTheme.headlineMedium,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Card(
                      margin: const EdgeInsets.all(24.0),
                      clipBehavior: Clip.hardEdge,
                      child: InkWell(
                        onTap: () async {
                          // TODO Navigate to 2048 Game
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) {
                              return const GameHomePage(title: '2048');
                            },
                          ));
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              height: 256,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/2048_screenshot.png'),
                                  // fit: BoxFit.fitWidth,
                                  alignment: Alignment.topCenter,
                                ),
                                // color: Colors.orange,
                              ),
                              // child: Center(
                              //   child: Container(color: Colors.blue),
                              // ),
                            ),
                            const SizedBox(height: 16.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '2048',
                                  style:
                                      Theme.of(context).textTheme.displayLarge,
                                ),
                              ],
                            ),
                            const SizedBox(height: 20.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                OutlinedButton(
                                  onPressed: () async {
                                    // TODO Navigate to 2048 Game
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) {
                                        return const GameHomePage(
                                          title: '2048',
                                        );
                                      },
                                    ));
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 8.0,
                                      horizontal: 60.0,
                                    ),
                                    child: Text(
                                      'Play',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20.0),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 100.0),
                    // Text(
                    //   'More games coming soon!',
                    //   style: Theme.of(context).textTheme.headlineSmall,
                    // )
                  ],
                ),
              ),
            ),
          ),
          const SliverFillRemaining(
            hasScrollBody: false,
          ),
          const SliverToBoxAdapter(child: Footer()),
        ],
      ),
    );
  }
}
