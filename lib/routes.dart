import 'package:fluro/fluro.dart';
import 'package:flutter_web_starter/apps/signin/signin_page.dart';
import 'package:flutter_web_starter/ui/main_screen.dart';
import 'package:flutter_web_starter/ui/splashScreen.dart';
import 'package:flutter_web_starter/ui/ui.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static Handler _splashHandler =
      Handler(handlerFunc: (_, params) => SplashScreen());

  static Handler _loginHandler =
      Handler(handlerFunc: (_, params) => LoginPage());

  static Handler _mainHandler = Handler(handlerFunc: (_, params) {
    return LandingPage(page: params['name']![0]);
  });

  static Handler _mainHandler2 = Handler(
      handlerFunc: (_, params) => LandingPage(
            page: params['name']![0],
            extra: params['extra']![0],
          ));

  static void setupRouter() {
    router.define(
      '/',
      handler: _splashHandler,
    );

    router.define(
      '/signin',
      handler: _loginHandler,
      transitionType: UI.defaultTransitionType,
    );

    router.define(
      '/main/:name',
      handler: _mainHandler,
      transitionType: UI.defaultTransitionType,
    );

    router.define(
      '/main/:name/:extra',
      handler: _mainHandler2,
      transitionType: UI.defaultTransitionType,
    );
  }
}
