import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ecommerce/screens/Order/Oreders_screen.dart';
import 'package:ecommerce/screens/cart/cart_screen.dart';
import 'package:ecommerce/screens/home/home_screen.dart';
import 'package:ecommerce/screens/profile/profile_screen.dart';
import 'package:ecommerce/screens/search/search_screen.dart';

import '../constants.dart';
import '../enums.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFB6B6B6);
    print(selectedMenu);
    print(MenuState.cart == selectedMenu);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                iconSize: MenuState.home == selectedMenu ? 25 : 20,
                icon: SvgPicture.asset(
                  "assets/icons/Shop Icon.svg",
                  color: MenuState.home == selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor,
                ),
                onPressed: () => Navigator.pushReplacementNamed(
                    context, HomeScreen.routeName),
              ),
              IconButton(
                icon: Icon(
                  Icons.shopping_cart_rounded,
                ), //SvgPicture.asset("assets/icons/Cart Icon.svg"),
                color: MenuState.cart == selectedMenu
                    ? kPrimaryColor
                    : inActiveIconColor,
                iconSize: MenuState.cart == selectedMenu ? 25 : 20,
                onPressed: () => Navigator.pushReplacementNamed(
                    context, CartScreen.routeName),
              ),
              IconButton(
                iconSize: MenuState.oreders == selectedMenu ? 25 : 20,
                icon: Icon(Icons.menu_outlined),
                color: MenuState.oreders == selectedMenu
                    ? kPrimaryColor
                    : inActiveIconColor,
                onPressed: () => Navigator.pushReplacementNamed(
                    context, OrdersScreen.routeName),
              ),
              IconButton(
                iconSize: MenuState.profile == selectedMenu ? 25 : 20,
                icon: SvgPicture.asset(
                  "assets/icons/User Icon.svg",
                  color: MenuState.profile == selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor,
                ),
                onPressed: () => Navigator.pushReplacementNamed(
                    context, ProfileScreen.routeName),
                // Navigator.pushNamed(context, ProfileScreen.routeName),
              ),
            ],
          )),
    );
  }
}
