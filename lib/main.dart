import 'package:flutter/material.dart';
import 'package:onlinegame/gamedetail.dart';
import 'package:onlinegame/home.dart';
import 'package:onlinegame/profile.dart';
import 'package:onlinegame/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const primaryTextColor = Colors.white;
    const secondaryTextColor = Color(0xff828282);
    const primaryColor = Color(0xffF7B84B);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.

        colorScheme: const ColorScheme.dark(
            primary: primaryColor,
            onPrimary: Colors.grey,
            onSurface: primaryTextColor,
            background: Colors.black,
            surface: Colors.grey,
            onBackground: primaryTextColor),
        appBarTheme: const AppBarTheme(
          titleSpacing: 32,
          backgroundColor: Colors.black,
          foregroundColor: primaryTextColor,
        ),
        snackBarTheme: const SnackBarThemeData(
            backgroundColor: primaryColor,
            contentTextStyle: TextStyle(
                color: Colors.black,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500)),
        textTheme: const TextTheme(
          headlineMedium: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
          bodyLarge: TextStyle(
              fontFamily: 'Poppins',
              color: secondaryTextColor,
              fontWeight: FontWeight.w600),
          titleLarge: TextStyle(
              fontFamily: 'Poppins', fontWeight: FontWeight.w600, fontSize: 18),
          bodySmall:
              TextStyle(fontFamily: 'Poppins', color: secondaryTextColor),
          titleMedium: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
          titleSmall: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w200,
              color: primaryTextColor),
        ),

        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  NavigationState createState() => NavigationState();
}

class NavigationState extends State<Navigation> {
  int _selectedIndex = 1;

  final List<Widget> _pages = [
    const GameDetsilScreen(),
    const Homepage(),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    const secondaryTextColor = Color(0xff828282);
    const primaryColor = Color(0xffF7B84B);

    return Scaffold(
      body: _pages[_selectedIndex], // نمایش صفحه انتخابی
      bottomNavigationBar: SizedBox(
        height: 60, // افزایش ارتفاع دلخواه (می‌توانید مقدار را تغییر دهید)
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: primaryColor,
          unselectedItemColor: secondaryTextColor,
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                size: 24,
              ),
              label: 'Following',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.explore_outlined,
                size: 24,
              ),
              label: 'Discover',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 24,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
