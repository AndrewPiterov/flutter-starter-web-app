import 'package:fluro/fluro.dart';
import 'package:flutter_web_starter/ui/main_screen.dart';
import 'package:flutter_web_starter/ui/splashScreen.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static Handler _splashHandler =
      Handler(handlerFunc: (_, params) => SplashScreen());

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
      '/main/:name',
      handler: _mainHandler,
      transitionType: TransitionType.fadeIn,
    );

    router.define(
      '/main/:name/:extra',
      handler: _mainHandler2,
      transitionType: TransitionType.fadeIn,
    );
  }
}
