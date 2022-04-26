import 'package:flutter/material.dart';
import 'package:music_player/home_screen/home_screen_manager.dart';
import 'package:music_player/service_locator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    // TODO: ask the internet to give me some songs
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder<List<String>>(
          valueListenable: getIt<HomeScreenManager>().songListNotifier,
          builder: (context, value, child) {
            return ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return const Card(
                  child: ListTile(
                    title: Text('Song Name'),
                  ),
                );
              },
            );
          }),
    );
  }
}
