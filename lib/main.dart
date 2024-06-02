import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tetris/utils/my_colors.dart';
import 'package:tetris/view/pages/Home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );

  runApp(
    MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: MyColors.blueGrey,
        textTheme: TextTheme(
          labelLarge: TextStyle(fontSize: 28, color: MyColors.yellow),
        ),
        colorScheme: ColorScheme.dark().copyWith(
          primary: MyColors.blue,
          onPrimary: MyColors.yellow,
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: MyColors.yellow,
            backgroundColor: MyColors.blue,
            alignment: Alignment.center,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          ),
        ),
      ),
      home: SplashScreen(),
    ),
  );
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(Duration(seconds: 3), () {});
    if (mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Home()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.blueGrey,
      body: Center(
        child: Image.asset('assets/logo.png', height: 200, width: 200,),  // Ensure the path is correct and the image is in the assets folder
      ),
    );
  }
}
