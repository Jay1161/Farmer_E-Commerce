import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../common_widgets/app_button.dart';
import '../common_widgets/app_text.dart';
import '../styles/colors.dart';
import 'account/widget_tree.dart';

class WelcomeScreen extends StatelessWidget {
  final String imagePath = "assets/images/welcome_image.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Spacer(),
              icon(),
              SizedBox(height: 20),
              welcomeTextWidget(),
              SizedBox(height: 10),
              sloganText(),
              SizedBox(height: 40),
              getButton(context),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  Widget icon() {
    String iconPath = "assets/icons/app_icon.svg";
    return SvgPicture.asset(
      iconPath,
      width: 48,
      height: 56,
    );
  }

  Widget welcomeTextWidget() {
    return Column(
      children: [
        AppText(
          text: "Welcome",
          fontSize: 48,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
        AppText(
          text: "to the market",
          fontSize: 48,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ],
    );
  }

  Widget sloganText() {
    return AppText(
      text: "Get your groceries straight from the farm",
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Color(0xffFCFCFC).withOpacity(0.7),
    );
  }

  Widget getButton(BuildContext context) {
    return AppButton(
      label: "Start Shopping",
      fontWeight: FontWeight.w600,
      padding: EdgeInsets.symmetric(vertical: 25),
      onPressed: () {
        onGetStartedClicked(context);
      },
    );
  }

  void onGetStartedClicked(BuildContext context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return WidgetTree();
        },
      ),
    );
  }
}
