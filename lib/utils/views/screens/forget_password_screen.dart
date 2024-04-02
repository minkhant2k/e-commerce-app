import 'package:flutter/material.dart';
import 'package:k_shop/utils/helper/extension.dart';
import 'package:k_shop/widgets/close_btn_widget.dart';

import '../../view_items/forget_password_screen_view_items/forget_password_screen_item_view.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          CloseBtnWidget(
            onPressed: () => context.back(),
          ),
        ],
      ),
      body: const ForgetPasswordItemsView(),
    );
  }
}
