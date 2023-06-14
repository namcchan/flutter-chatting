import 'package:flutter/material.dart';
import 'package:flutter_chat_app/screens/chats/chats.dart';
import 'package:flutter_chat_app/screens/friends/friends_screen.dart';
import '/constants/theme.dart';
import '/screens/settings/settings_screen.dart';

class AppScreen extends StatefulWidget {
  const AppScreen({Key? key}) : super(key: key);

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _screenOptions = <Widget>[
    ChatsScreen(),
    FriendsScreen(),
    SettingsScreen()
  ];

  void _onItemTapped(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screenOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_outlined),
            label: "Chats",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_alt_outlined),
            label: "Friends",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Profile",
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppTheme.primary2,
        onTap: _onItemTapped,
      ),
    );
  }
}
