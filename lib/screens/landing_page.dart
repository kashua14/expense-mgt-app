import 'package:e_kitabo/theme/custom_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../generated/assets.dart';
import 'dashboard_page.dart';
import 'wallet_page.dart';
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
    const WalletPage(),
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
          assetName: Assets.iconsDashboard,
          color: _currentTabIndex == 0 ? CustomColors.primaryColor : null,
        ),
        label: "",
      ),
      BottomNavigationBarItem(
        icon: SvgAssetPicture(
          assetName: Assets.iconsWallet,
          color: _currentTabIndex == 1 ? CustomColors.primaryColor : null,
        ),
        label: "",
      ),
      BottomNavigationBarItem(
        icon: SvgAssetPicture(
          assetName: Assets.iconsAdd,
          color: _currentTabIndex == 2
              ? CustomColors.primaryColor
              : CustomColors.grayDark,
        ),
        label: "",
      ),
      BottomNavigationBarItem(
        icon: SvgAssetPicture(
          assetName: Assets.iconsNotification,
          color: _currentTabIndex == 3 ? CustomColors.primaryColor : null,
        ),
        label: "",
      ),
      BottomNavigationBarItem(
        icon: SvgAssetPicture(
          assetName:Assets.iconsProfile,
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
        // backgroundColor: _currentTabIndex == 0
        //     ? CustomTheme.isDarkModeOn()
        //         ? CustomColors.blackLight
        //         : CustomColors.grayLight
        //     : null,
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
