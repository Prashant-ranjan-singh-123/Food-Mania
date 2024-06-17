import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: HexColor('#3c0144'),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          backgroundColor: Colors.black,
          icon: Icon(CupertinoIcons.home,),
          label: '',

        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.cart),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.heart),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: '',
        ),
      ],
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      elevation: 20,
      useLegacyColorScheme: false,
    );
  }
}
