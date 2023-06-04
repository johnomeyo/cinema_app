import 'package:cinema_app/get_started/sign_up_page.dart';
import 'package:cinema_app/navigation_pages/favorites.dart';
import 'package:cinema_app/navigation_pages/homepage.dart';
import 'package:cinema_app/navigation_pages/profile.dart';
import 'package:cinema_app/navigation_pages/tickets.dart';
import 'package:cinema_app/pages/auth_page.dart';
import 'package:cinema_app/pages/login.dart';
import 'package:cinema_app/providers.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyCetIdTVD4RXCp06Gdr1RAl152EqT3wjwc",
          appId: "com.example.cinema_app",
          messagingSenderId: "",
          projectId: "cinemaapp-2c4db"));
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (BuildContext context) {
            return BookSeat();
          },
        ),
        ChangeNotifierProvider(
          create: (BuildContext context) {
            return FavoriteIcon();
          },
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.red),
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        darkTheme: ThemeData.dark(),
        home:  const AuthPage(),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

final List<Widget> _pages = [
  HomePage(),
  const Favorites(),
  const Tickets(),
  const Profile()
];
int _selectedIndex = 0;

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: GNav(
        selectedIndex: _selectedIndex,
        onTabChange: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        gap: 8,
        activeColor: Colors.red,
        iconSize: 24,
        tabBackgroundColor: Colors.grey[100]!,
        color: Colors.black,
        tabs: const [
          GButton(
            icon: Icons.home_outlined,
            text: "Home",
          ),
          GButton(
            icon: Icons.favorite_outline,
            text: "Favorites",
          ),
          GButton(
            icon: Icons.money,
            text: "Tickets",
          ),
          GButton(
            icon: Icons.person_outline,
            text: "Profile",
          ),
        ],
      ),
    );
  }
}
