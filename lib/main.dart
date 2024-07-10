import 'package:flutter/material.dart';
import 'package:yandex_map_tutorial/services/location_service.dart';
import 'package:yandex_map_tutorial/views/screens/map_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocationService.checkPermissions();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.black87),
      home: const MapScreen(),
    );
  }
}
