import 'package:flutter/material.dart';
import 'Screens/auth_screen.dart';
import 'Screens/consent_to_use.dart';

void main() {
  runApp(const SibTProductDesignApp());
  // runApp(const AuthScreen());
  // runApp(const ConsentToUse());
}

class SibTProductDesignApp extends StatefulWidget {
  const SibTProductDesignApp({Key? key}) : super(key: key);
  @override
  _SibTProductDesignAppState createState() => _SibTProductDesignAppState();
}


class _SibTProductDesignAppState extends State<SibTProductDesignApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trial Work',
      initialRoute: '/',
      routes: {
        '/': (context) => const AuthScreen(),
        '/consent_to_use': (context) => const ConsentToUse(),
        // '/drop_down_button': (context) => const MyDropdownButton(),
        // PassArgumentsScreen.routeName: (context) => const PassArgumentsScreen(),
        // '/drawing_screen': (context) => const DrawingScreen(),
      },
    );
  }
}