import 'package:flutter/material.dart';
import '../all_products_screen/all_products_screen.dart';

import '../../utility/padding/padding.dart';
import '../shopping_cart/shopping_cart_view.dart';

class MainScreenView extends StatefulWidget {
  const MainScreenView({Key? key}) : super(key: key);

  @override
  State<MainScreenView> createState() => _MainScreenViewState();
}

class _MainScreenViewState extends State<MainScreenView> {
  int currentIndex = 0;
  final screens = <Widget>[const AllProductsScreenView(),const ShoppingCartView()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      drawer: const Drawer(),
      bottomNavigationBar: _bottomNavbar(context),
      appBar: _appBar(context),
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      title: const Image(
        image: AssetImage(
          "assets/logo.png",
        ),
        width: 150,
      ),
      actions: const [
        Padding(
          padding: MegaPadding.right20(),
          child: Icon(Icons.notifications),
        )
      ],
      backgroundColor: Theme.of(context).colorScheme.primary,
    );
  }

  BottomNavigationBar _bottomNavbar(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        selectedItemColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Ana Səhifə"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag), label: "Səbət"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Bəyənilənlər"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Tənzimləmələr"),
        ]);
  }
}
