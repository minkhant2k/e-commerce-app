import 'package:flutter/material.dart';
import '../../view_items/sign_up_screen_view_items/sign_up_screen_items_view.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SignUpScreenItemsView(),
    );
  }
}
