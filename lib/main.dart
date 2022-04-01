import 'package:flutter/material.dart';
import 'Screens/auth_screen.dart';
import 'Screens/consent_to_use.dart';
import 'Screens/flat_items_selection_screen.dart';
import 'Screens/group_selection_screen.dart';
import 'Screens/household_items_selection_screen.dart';
import 'Screens/kettle_selection_screen.dart';
import 'Screens/pan_selection_screen.dart';

void main() {
  runApp(const SibTProductDesignApp());
  // runApp(const AuthScreen());
  // runApp(const ConsentToUse());
  // runApp(const PanSelection());
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
      title: 'SibTProductDesignApp',
      initialRoute: '/',
      routes: {
        '/': (context) => const AuthScreen(),
        '/consent_to_use': (context) => const ConsentToUse(),
        '/group_selection_screen': (context) => const GroupSelectionScreen(),
        '/pan_selection_screen': (context) => const PanSelection(),
        '/kettle_selection_screen': (context) => const KettleSelection(),
        '/household_items_selection_screen': (context) => const HouseholdItemsSelection(),
        '/flat_items_selection_screen': (context) => const FlatItemsSelection(),
      },
    );
  }
}