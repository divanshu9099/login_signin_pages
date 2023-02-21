import 'package:flutter/material.dart';
import 'package:login_signin_pages/register.dart';

import 'login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false, //for remove debug banner from page
    initialRoute: "login",
    routes: {"login": (
        context) => myLogin(),
      "register": (
          context) => myRegister(),
    },
  ));
}

