import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:split_it/modules/login/login_controller.dart';
import 'package:split_it/modules/login/login_service.dart';
import 'package:split_it/modules/login/login_state.dart';
import 'package:split_it/modules/login/widgets/social_button.dart';
import 'package:split_it/theme/app_theme.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late LoginController controller;

  @override
  void initState() {
    controller = LoginController(
      service: LoginServiceImplementation(),
    );
    autorun((_) {
      {
        if (controller.state is LoginStateSuccess) {
          final user = (controller.state as LoginStateSuccess).user;
          Navigator.pushReplacementNamed(context, "/home", arguments: user);
        }
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.backgroundPrimary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Text(
              "Divida suas contas com seus amigos",
              style: AppTheme.textStyles.title,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Column(
              children: [
                ListTile(
                  leading: Image.asset("assets/images/emoji.png"),
                  title: Text(
                    "Faça seu login com uma das contas abaixo",
                    style: AppTheme.textStyles.button,
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Observer(builder: (context) {
                  if (controller.state is LoginStateLoading)
                    return CircularProgressIndicator();
                  else if (controller.state is LoginStateFailure)
                    return Text(
                        (controller.state as LoginStateFailure).message);
                  else
                    return SocialButton(
                      imagePath: "assets/images/google-icon.png",
                      label: "Entrar com Google",
                      onTap: () {
                        controller.googleSignIn();
                      },
                    );
                }),
                SizedBox(
                  height: 12,
                ),
                if (Platform.isIOS)
                  // SignInWithAppleButton(
                  //   onPressed: () async {
                  //     final credential =
                  //         await SignInWithApple.getAppleIDCredential(
                  //       scopes: [
                  //         AppleIDAuthorizationScopes.email,
                  //         AppleIDAuthorizationScopes.fullName,
                  //       ],
                  //     );

                  //     print(credential);

                  //     // Now send the credential (especially `credential.authorizationCode`) to your server to create a session
                  //     // after they have been validated with Apple (see `Integration` section for more information on how to do this)
                  //   },
                  // ),
                  SocialButton(
                    imagePath: "assets/images/apple-icon.png",
                    label: "Entrar com Apple",
                    onTap: () {
                      print("TODO: Create sign in with Apple");
                    },
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
