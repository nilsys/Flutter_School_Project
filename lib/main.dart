import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school/screens/screens.dart';
import 'package:school/services/services.dart';
import 'package:school/utilities/constants.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FirebaseAnalytics _analytics = FirebaseAnalytics();
    return StreamProvider.value(
      value: Auth.firebaseUser,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: primaryColor,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          accentColor: lightColor,
          dividerColor: black,
          textTheme: Typography.blackMountainView,
        ),
        debugShowCheckedModeBanner: false,
        // initialRoute: '/',
        // routes: {
        //   '/': (context) => ProfilScreen(),
        //   '/home_siswa': (context) => HomeSiswaScreen(),
        //   '/home_guru': (context) => HomeGuruScreen(),
        //   '/konfirmasi': (context) => KonfirmasiScreen(),
        //   '/profile': (context) => ProfilScreen()
        // },
        navigatorObservers: [
          FirebaseAnalyticsObserver(analytics: _analytics),
        ],
        home: ProfilScreen(),
      ),
    );
  }
}
