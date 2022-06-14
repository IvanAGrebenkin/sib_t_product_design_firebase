import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'Screens/FlatItemsScreens/flat_item_drawing_view_screen.dart';
import 'Screens/HouseholdItemsScreens/household_items_drawing_selection_screen.dart';
import 'Screens/HouseholdItemsScreens/household_items_drawing_view_screen.dart';
import 'Screens/KettleScreens/kettle_drawing_selection_screen.dart';
import 'Screens/KettleScreens/kettle_drawing_view_screen.dart';
import 'Screens/PanScreens/pan_drawing_selection_screen.dart';
import 'Screens/PanScreens/pan_drawing_view_screen.dart';
import 'Screens/auth_screen.dart';
import 'Screens/consent_to_use.dart';
import 'Screens/FlatItemsScreens/flat_items_selection_screen.dart';
import 'Screens/group_selection_screen.dart';
import 'Screens/HouseholdItemsScreens/household_items_selection_screen.dart';
import 'Screens/KettleScreens/kettle_selection_screen.dart';
import 'Screens/PanScreens/pan_selection_screen.dart';

import 'dart:async';
import 'dart:io';

// get prefs async => await SharedPreferences.getInstance();
// final isConsent = prefs.getInt('isConsent') ?? 0;

// final prefs = await SharedPreferences.getInstance();
//
// // Try reading data from the counter key. If it doesn't exist, return 0.
// final counter = prefs.getInt('counter') ?? 0;

class AccountStorage1 {
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/account.txt');
  }

  Future<String> readAccount() async {
    try {
      final file = await _localFile;

      // Read the file
      // final contents = await file.readAsString();
      //
      // return string.parse(contents);
      return file.readAsString();
    } catch (e) {
      // If encountering an error, return 0
      return '0';
    }
  }

  Future<File> writeAccount(String account) async {
    final file = await _localFile;

    // Write the file
    return file.writeAsString(account);
  }
}

void  main() {
  runApp(SibTProductDesignApp(storage1: AccountStorage(),));
  // runApp(const AuthScreen());
  // runApp(const ConsentToUse());
  // runApp(const PanSelection());
  // runApp(const PanDrawingViewScreen());
  // runApp(const KettleDrawingViewScreen());
}

class SibTProductDesignApp extends StatefulWidget {
  const SibTProductDesignApp({Key? key, required this.storage1}) : super(key: key);

  final AccountStorage storage1;
  @override
  _SibTProductDesignAppState createState() => _SibTProductDesignAppState();
}


class _SibTProductDesignAppState extends State<SibTProductDesignApp> {

  // int a=0;
  String? b;

  String? _account;

  @override
  void initState() {
    super.initState();
    widget.storage1.readAccount().then((value) {
      setState(() {
        _account = value;
      });
    });
  }




  @override
  Widget build(BuildContext context) {

    String? b;
    if (_account=='0'){
    b='/group_selection_screen';}

    else {b='/';}

    // if (a==0) {
      return MaterialApp(
        title: 'SibTProductDesignApp',
        initialRoute: b,
        routes: {
          '/': (context) => const AuthScreen(),
          '/consent_to_use': (context) => ConsentToUse(storage: AccountStorage()),
          '/group_selection_screen': (context) => const GroupSelectionScreen(),
          '/pan_selection_screen': (context) => const PanSelection(),
          '/kettle_selection_screen': (context) => const KettleSelection(),
          '/household_items_selection_screen': (context) =>
              const HouseholdItemsSelection(),
          '/flat_items_selection_screen': (context) =>
              const FlatItemsSelection(),
          PanDrawingSelectionScreen.routeName: (context) =>
              const PanDrawingSelectionScreen(),
          PanDrawingViewScreen.routeName: (context) =>
              const PanDrawingViewScreen(),
          KettleDrawingSelectionScreen.routeName: (context) =>
              const KettleDrawingSelectionScreen(),
          KettleDrawingViewScreen.routeName: (context) =>
              const KettleDrawingViewScreen(),
          FlatItemsDrawingViewScreen.routeName: (context) =>
              const FlatItemsDrawingViewScreen(),
          HouseholdItemsDrawingSelectionScreen.routeName: (context) =>
              const HouseholdItemsDrawingSelectionScreen(),
          HouseholdItemsDrawingViewScreen.routeName: (context) =>
              const HouseholdItemsDrawingViewScreen(),
        },
      );
    // }
    // else {
    //   return MaterialApp(
    //     title: 'SibTProductDesignApp',
    //     initialRoute: '/group_selection_screen',
    //     routes: {
    //       '/': (context) => const AuthScreen(),
    //       '/consent_to_use': (context) => const ConsentToUse(),
    //       '/group_selection_screen': (context) => const GroupSelectionScreen(),
    //       '/pan_selection_screen': (context) => const PanSelection(),
    //       '/kettle_selection_screen': (context) => const KettleSelection(),
    //       '/household_items_selection_screen': (context) =>
    //           const HouseholdItemsSelection(),
    //       '/flat_items_selection_screen': (context) =>
    //           const FlatItemsSelection(),
    //       PanDrawingSelectionScreen.routeName: (context) =>
    //           const PanDrawingSelectionScreen(),
    //       PanDrawingViewScreen.routeName: (context) =>
    //           const PanDrawingViewScreen(),
    //       KettleDrawingSelectionScreen.routeName: (context) =>
    //           const KettleDrawingSelectionScreen(),
    //       KettleDrawingViewScreen.routeName: (context) =>
    //           const KettleDrawingViewScreen(),
    //       FlatItemsDrawingViewScreen.routeName: (context) =>
    //           const FlatItemsDrawingViewScreen(),
    //       HouseholdItemsDrawingSelectionScreen.routeName: (context) =>
    //           const HouseholdItemsDrawingSelectionScreen(),
    //       HouseholdItemsDrawingViewScreen.routeName: (context) =>
    //           const HouseholdItemsDrawingViewScreen(),
    //     },
    //   );
    // }
  }
}