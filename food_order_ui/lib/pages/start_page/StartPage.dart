import 'package:flutter/material.dart';
import 'package:food_order_ui/pages/widgets/login_button_widget.dart';

import '../../config/size_config.dart';
import '../widgets/register_button_widget.dart';
import '../widgets/text_tile.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            height: SizeConfig.screenHeight! / 2.732,
            /// 250.0
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/main/bg.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: SizeConfig.screenWidth! / 1.83,
                /// 225.0
                height: SizeConfig.screenHeight! / 5.174,

                /// 132.0
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/main/logo.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                  0,
                  SizeConfig.screenHeight! / 68.3,

                  /// 10.0
                  0,
                  SizeConfig.screenHeight! / 11.38,

                  /// 60.0
                ),
                child: Column(
                  children: [
                    Center(child: TextTitle(title: "WELCOME")),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.screenWidth! / 10.28,
                        vertical: SizeConfig.screenHeight! / 136.6,
                      ),
                      /// 40.0 - 5.0
                      child: Center(
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                          style: TextStyle(color: Colors.white60),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              LoginButton(),
              RegisterButtonWidget(),
            ],
          ),
        ],
      ),
    );
  }
}
