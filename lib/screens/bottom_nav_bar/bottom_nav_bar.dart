import 'package:animated_movies_app/constants/route_animation.dart';
import 'package:animated_movies_app/constants/ui_constant.dart';
import 'package:animated_movies_app/data/movies_data.dart';
import 'package:animated_movies_app/screens/favourite_screen/favourite_screen.dart';
import 'package:animated_movies_app/screens/home_screen/home_screen.dart';
import 'package:animated_movies_app/screens/home_screen/widgets/animated_stack.dart';
import 'package:animated_movies_app/screens/home_screen/widgets/bottom_nav_bar.dart';
import 'package:animated_movies_app/screens/home_screen/widgets/filters_widget.dart';
import 'package:animated_movies_app/screens/home_screen/widgets/header_widget.dart';
import 'package:animated_movies_app/screens/home_screen/widgets/movies_cover_widget.dart';
import 'package:animated_movies_app/screens/home_screen/widgets/search_field_widget.dart';
import 'package:animated_movies_app/screens/message_screen/message_screen.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:hexcolor/hexcolor.dart';

import '../profile_screen.dart';

class GlobalNavBar extends StatefulWidget {
  const GlobalNavBar({super.key});

  @override
  State<GlobalNavBar> createState() => _GlobalNavBarState();
}

class _GlobalNavBarState extends State<GlobalNavBar> {
  int _selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: _current_screen(),
      ),
      bottomNavigationBar: bottom_nav_bar().animate()
          .slideY(
          begin: 12,
          delay: 700.ms,
          duration: 1000.ms,
          curve: Curves.decelerate)
      ,
    );
  }

  Widget _current_screen(){
    if(_selectedIndex==0){
      return HomeScreen();
    }else if(_selectedIndex ==1){
      return MessageScreen();
    }else if(_selectedIndex ==2){
      return FavouriteScreen();
    }else {
      return ProfileScreen();
    }
  }

  Widget bottom_nav_bar(){
    return FlashyTabBar(
      selectedIndex: _selectedIndex,
      backgroundColor: Colors.black,
      showElevation: true,
      iconSize: 20,

      onItemSelected: (index) => setState(() {
        _selectedIndex = index;
      }),
      items: [
        FlashyTabBarItem(
          icon: Icon(CupertinoIcons.home),
          title: Text('Home', style: TextStyle(color: Colors.white, fontSize: 15),),
        ),
        FlashyTabBarItem(
          icon: Icon(CupertinoIcons.text_bubble),
          title: const Text('Message', style: TextStyle(color: Colors.white, fontSize: 15)),
        ),
        FlashyTabBarItem(
          icon: Icon(CupertinoIcons.heart),
          title: Text('Favourite', style: TextStyle(color: Colors.white, fontSize: 15)),
        ),
        // FlashyTabBarItem(
        //   icon: Icon(Icons.person_outline),
        //   title: Text('Profile', style: TextStyle(color: Colors.white, fontSize: 15)),
        // ),
      ],
    );
  }
}