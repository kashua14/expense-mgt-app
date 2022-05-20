import 'package:e_kitabo/generated/assets.dart';
import 'package:e_kitabo/theme/text_theme_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widgets/auth_form_fields.dart';
import '../widgets/auth_page_footer.dart';
import '../routes/app_routes.dart';
import '../theme/custom_colors.dart';
import '../theme/custom_theme.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

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
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
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
                        TextSpan(
                          text: "E'",
                          children: [
                            TextSpan(
                              text: "Kitabo",
                              style: context.headline1?.copyWith(fontSize: 55),
                            ),
                          ],
                          style: context.headline1?.copyWith(
                              fontSize: 55, color: CustomColors.primaryColor),
                        ),
                      ),
                      SizedBox(
                        height: 340,
                        child: Image.asset(
                          CustomTheme.isDarkModeOn()
                              ? Assets.imagesDarkRegister
                              : Assets.imagesLightRegister,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        "Register now & start tracking your expenses",
                        textAlign: TextAlign.center,
                        style: context.headline5
                            ?.copyWith(color: CustomColors.grayDark),
                      ),
                      const SizedBox(height: 20),
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child: AuthFormFields(ctaBtnText: "REGISTER"),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const AuthPageFooter(
                          btnText: "LOGIN", route: AppRoutes.kLogin)
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
