import 'package:e_kitabo/screens/dashboard_page.dart';
import 'package:e_kitabo/theme/custom_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widgets/svg_asset_picture.dart';
import '../theme/custom_colors.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _currentTabIndex = 0;

  final kTabPages = <Widget>[
    const DashboardPage(),
    const Center(
      child: Icon(Icons.wallet, size: 64),
    ),
    const Center(
      child: Icon(Icons.add_circle, size: 64),
    ),
    const Center(
      child: Icon(Icons.notifications_none, size: 64),
    ),
    const Center(
      child: Icon(Icons.person, size: 64),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: CustomTheme.isDarkModeOn() ? Brightness.light : Brightness.dark ,
      ),
    );
    final kBottomNavBarItems = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: SvgAssetPicture(
          assetName: "assets/icons/dashboard.svg",
          color: _currentTabIndex == 0 ? CustomColors.primaryColor : null,
        ),
        label: "",
      ),
      BottomNavigationBarItem(
        icon: SvgAssetPicture(
          assetName: "assets/icons/wallet.svg",
          color: _currentTabIndex == 1 ? CustomColors.primaryColor : null,
        ),
        label: "",
      ),
      BottomNavigationBarItem(
        icon: SvgAssetPicture(
          assetName: "assets/icons/add.svg",
          color: _currentTabIndex == 2
              ? CustomColors.primaryColor
              : CustomColors.grayDark,
        ),
        label: "",
      ),
      BottomNavigationBarItem(
        icon: SvgAssetPicture(
          assetName: "assets/icons/notification.svg",
          color: _currentTabIndex == 3 ? CustomColors.primaryColor : null,
        ),
        label: "",
      ),
      BottomNavigationBarItem(
        icon: SvgAssetPicture(
          assetName: "assets/icons/profile.svg",
          color: _currentTabIndex == 4 ? CustomColors.primaryColor : null,
        ),
        label: "",
      )
    ];

    return Scaffold(
      body: SafeArea(child: kTabPages[_currentTabIndex]),
      bottomNavigationBar: BottomNavigationBar(
        items: kBottomNavBarItems,
        currentIndex: _currentTabIndex,
        elevation: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: _currentTabIndex == 0
            ? CustomTheme.isDarkModeOn()
                ? CustomColors.blackLight
                : CustomColors.grayMedium
            : null,
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          setState(() {
            _currentTabIndex = index;
          });
        },
      ),
    );
  }
}
