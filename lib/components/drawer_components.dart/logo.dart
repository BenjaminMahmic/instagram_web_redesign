import 'package:flutter/material.dart';

class AppDrawerTopLogo extends StatelessWidget {
  const AppDrawerTopLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: double.infinity,
      child: Image.asset('assets/pictures/instagram_logo_with_name.png'),
    );
  }
}
