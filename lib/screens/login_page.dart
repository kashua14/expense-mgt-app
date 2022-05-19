import 'package:e_kitabo/theme/text_theme_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widgets/auth_form_fields.dart';
import '../widgets/auth_page_footer.dart';
import '../routes/app_routes.dart';
import '../theme/custom_colors.dart';
import '../theme/custom_theme.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: CustomTheme.isDarkModeOn() ? Brightness.light : Brightness.dark ,
      ),
    );
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SafeArea(
          child: LayoutBuilder(builder:
              (BuildContext context, BoxConstraints viewportConstraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: viewportConstraints.maxHeight,
                ),
                child: IntrinsicHeight(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text.rich(
                        textAlign: TextAlign.center,
                        TextSpan(
                          text: "E'",
                          children: [
                            TextSpan(
                              text: "Kitabo",
                              style: context.headline1?.copyWith(fontSize: 60),
                            ),
                          ],
                          style: context.headline1?.copyWith(
                              fontSize: 60, color: CustomColors.primaryColor),
                        ),
                      ),
                      SizedBox(
                        height: 350,
                        child: Image.asset(
                          CustomTheme.isDarkModeOn()
                              ? "assets/images/dark-financial.gif"
                              : "assets/images/light-financial.gif",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        "Track Expenses & Save Money",
                        textAlign: TextAlign.center,
                        style: context.headline5
                            ?.copyWith(color: CustomColors.grayDark),
                      ),
                      const SizedBox(height: 20),
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child: AuthFormFields(),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const AuthPageFooter(
                          btnText: "REGISTER", route: AppRoutes.kRegister)
                    ],
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
