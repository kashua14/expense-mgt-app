import 'package:e_kitabo/screens/dashboard_page.dart';
import 'package:flutter/material.dart';

import '../exception/exception_indicator.dart';
import '../screens/landing_page.dart';
import '../screens/login_page.dart';
import '../screens/signup_page.dart';
import 'app_routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.kRoot:
      return MaterialPageRoute(builder: (context) => const LandingPage());

     case AppRoutes.kLogin:
       return MaterialPageRoute(builder: (context)=> const LoginPage());

    case AppRoutes.kRegister:
      return MaterialPageRoute(builder: (context)=> const SignupPage());

     case AppRoutes.kDashboard:
       return MaterialPageRoute(builder: (context)=> const LandingPage());

    //  case AppRoutes.kPropertyDetails:
    //    if(settings.arguments is PropertyModel){
    //      return MaterialPageRoute(
    //          builder: (context)=> PropertyDetailsPage(
    //            property: settings.arguments,
    //          ),
    //      );
    //    }
    //    break;

    //    // Navigation Drawer
    //  case AppRoutes.kAlerts:
    //    return MaterialPageRoute(builder: (context)=> AlertsPage());
    //    break;
    //  case AppRoutes.kAgentProfile:
    //    if(settings.arguments is User){
    //      return MaterialPageRoute(builder: (context)=> AgentTimeLinePage(
    //        user: settings.arguments,
    //      ));
    //    }
    //    break;
    //  case AppRoutes.kEditProfile:
    //    if(settings.arguments is User){
    //      return MaterialPageRoute(builder: (context)=> EditProfilePage(
    //        user: settings.arguments,
    //      ));
    //    }
    //    break;
    //  case AppRoutes.kQRPage:
    //    return MaterialPageRoute(builder: (context)=> QrCodePage());
    //    break;
    // case AppRoutes.kAddProperty:
    //   return MaterialPageRoute(builder: (context) => const AddNewListingOne());

    //  case AppRoutes.kSavedListing:
    //    return MaterialPageRoute(builder: (context)=> SavedPropertiesNav());
    //    break;
    //  case AppRoutes.kSettings:
    //    return MaterialPageRoute(builder: (context)=> SettingsPage());
    //    break;

    // case AppRoutes.kAddProperty2:
    //   if (settings.arguments is Hostel) {
    //     return MaterialPageRoute(
    //         builder: (context) => AddNewListingTwo(
    //               propertyModel: settings.arguments as Hostel,
    //             ));
    //   }
    //   break;

    // case AppRoutes.kAddProperty3:
    //   if (settings.arguments is Hostel) {
    //     return MaterialPageRoute(
    //         builder: (context) => AddNewListingThree(
    //               property: settings.arguments as Hostel,
    //             ));
    //   }
    //   break;

    //  case AppRoutes.kAgentTimeLine:
    //    if(settings.arguments is User){
    //      return MaterialPageRoute(builder: (context)=> AgentTimeLinePage(
    //        user: settings.arguments,
    //      ));
    //    }
    //    break;

    //  case AppRoutes.kChatRoom:
    //    if(settings.arguments is User){
    //      return MaterialPageRoute(
    //        builder: (context)=> ChatRoom(
    //          user: settings.arguments,
    //        ),
    //      );
    //    }
    //    break;

    default:
      return MaterialPageRoute(
          builder: (context) => UndefinedView(name: settings.name));
  }
  // return MaterialPageRoute(
  //     builder: (context) => UndefinedView(name: settings.name));
}

class UndefinedView extends StatelessWidget {
  final String? name;

  const UndefinedView({Key? key, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ExceptionIndicator(
      title: 'Not Found',
      message: 'Route is not defined',
      assetName: 'assets/frustrated-face.png',
    );
  }
}
