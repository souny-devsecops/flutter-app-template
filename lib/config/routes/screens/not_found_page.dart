import 'package:flutter/material.dart';
import '../../theme/app_text_styles.dart';
import '../../theme/app_themes.dart';

class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorBackground,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Page Not Found",
              style: AppTextStyles.title,
            ),
          ],
        ),
      ),
    );
  }
}
