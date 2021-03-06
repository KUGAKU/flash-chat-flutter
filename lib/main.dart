import 'package:flutter/material.dart';
import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flash_chat/screens/chat_screen.dart';

void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          body1: TextStyle(color: Colors.black54),
        ),
      ),
      home: WelcomeScreen(),
      initialRoute: WelcomeScreen.id,
      routes: <String, WidgetBuilder> {
        WelcomeScreen.id: (BuildContext context) => WelcomeScreen(),
        ChatScreen.id: (BuildContext context) => ChatScreen(),
        RegistrationScreen.id: (BuildContext context) => RegistrationScreen(),
        LoginScreen.id: (BuildContext context) => LoginScreen(),
      },
    );
  }
}
