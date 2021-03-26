import 'package:flutter/material.dart';
import 'package:flutter_web_starter/services/services.dart';

import 'app.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initServices();

  runApp(MyApp());
}
