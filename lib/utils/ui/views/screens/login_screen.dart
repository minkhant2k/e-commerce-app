import 'package:flutter/material.dart';

import 'package:k_shop/providers/login_provider.dart';
import 'package:provider/provider.dart';

import '../../view_items/login_screen_view_items/login_screen_items_view.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LoginProvider>(
      create: (_) => LoginProvider(),
      child: const Scaffold(
        body: LoginScreenItemView(),
      ),
    );
  }
}
