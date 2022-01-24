import 'package:electricity/view/mainPage/consumptionMain/value_monitor.dart';
import 'package:electricity/view/mainPage/startSreen/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'model/pref.dart';

var select = 1;
bool login = false;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  var user = FirebaseAuth.instance.currentUser;
  print("****************************");
  await getpref();
  print("****************************");
  if (islogin == "true") {
    login = true;
  } else {
    login = false;
  }
  runApp(MyApp());
}
