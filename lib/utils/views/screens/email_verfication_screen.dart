import 'package:flutter/material.dart';
import 'package:k_shop/utils/helper/extension.dart';

import '../../../widgets/close_btn_widget.dart';
import '../../view_items/email_verifaction_screen_view_items/email_verifaction_items_view.dart';
import 'login_screen.dart';

class EmailVerifactionScreen extends StatelessWidget {
  const EmailVerifactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          CloseBtnWidget(
            onPressed: () => context.pushReplacement(
              const LoginScreen(),
            ),
          )
        ],
      ),
      body: const EmailVerifactionScreenItemViews(),
    );
  }
}
