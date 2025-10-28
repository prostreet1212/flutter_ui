import 'package:flutter/material.dart';

import '../../../config/colors.dart';
import '../../../config/size_config.dart';


class TextSignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: EdgeInsets.fromLTRB(
          SizeConfig.screenWidth!/20.55,
          SizeConfig.screenHeight!/136.6,
          SizeConfig.screenWidth!/20.55,
          0
      ),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Don't have an account?", style: TextStyle(color: texthint),),
            GestureDetector(
              onTap: (){
               // Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPageView()));
              },
              child: Text(
                " Sign up",
                style: TextStyle(
                    color: buttonColor,
                    fontWeight: FontWeight.w600,
                    fontSize: SizeConfig.screenHeight!/45.54          /// 15
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
