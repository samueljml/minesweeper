import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../core/values/colors.dart';

class MobileScreen extends StatelessWidget {
  final Widget child;

  const MobileScreen({required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: AppBar(
          backgroundColor: secondaryColor,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: secondaryColor,
            statusBarIconBrightness: Brightness.dark,
            statusBarBrightness: Brightness.dark,
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(color: secondaryColor),
          padding: const EdgeInsets.all(20),
          child: child,
        ),
      ),
    );
  }
}
