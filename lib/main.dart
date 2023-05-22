import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:routing/router/router.dart';
import 'package:routing/screen_a.dart';
import 'package:routing/screen_b.dart';

/// Flutter code sample for [BottomNavigationBar].

void main() => runApp(BottomNavigationBarExampleApp());

class BottomNavigationBarExampleApp extends StatelessWidget {
  BottomNavigationBarExampleApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
    );
  }
}

@RoutePage()
class BottomNavigationBarExampleScreen extends StatefulWidget {
  const BottomNavigationBarExampleScreen({super.key});

  @override
  State<BottomNavigationBarExampleScreen> createState() =>
      _BottomNavigationBarExampleScreenState();
}

class _BottomNavigationBarExampleScreenState extends State<BottomNavigationBarExampleScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static const List<Widget> _widgetOptions = <Widget>[
    ScreenA(),
    ScreenB(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'A',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'B',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}

