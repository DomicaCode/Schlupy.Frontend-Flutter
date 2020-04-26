import 'package:schlupyfrontend/views/auth/login.dart';
import 'package:schlupyfrontend/views/auth/register.dart';
import 'package:schlupyfrontend/views/auth/register.dart';

import 'package:schlupyfrontend/views/pages/about.dart';
import 'package:schlupyfrontend/views/pages/dashboard.dart';
import 'package:schlupyfrontend/views/pages/home.dart';
import 'package:schlupyfrontend/views/pages/rate_app.dart';
import 'package:schlupyfrontend/views/pages/refer_a_friend.dart';

Object appRoutes = {
  '/': (context) => HomePage(),
//  '/auth': (context) => Router(),

// pages
  '/refer-a-friend': (context) => ReferAFriendPage(),
  '/about': (context) => AboutPage(),
  '/rate-app': (context) => RateApp(),

  // auth
  '/login': (context) => LoginPage(),
  '/register':(context) => RegisterPage(),
  '/dashboard': (context) => DashboardPage(),

  // backend

};
