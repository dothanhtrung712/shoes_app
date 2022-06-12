import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shoes_app/app/shoes_application.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const ShoesApplication());
}

