import 'package:get/get.dart';

import '../../modules/game/binding.dart';
import '../../modules/game/page.dart';
import '../../modules/home/binding.dart';
import '../../modules/home/page.dart';

class ForceNavigateToRouteMiddleware extends GetMiddleware {
  final String from;
  final String to;

  ForceNavigateToRouteMiddleware({
    required this.from,
    required this.to,
  });

  @override
  Future<GetNavConfig?> redirectDelegate(GetNavConfig route) async {
    var pos =
        route.currentTreeBranch.indexWhere((p) => p.name == route.location);
    if (pos == -1) {
      // NOT FOUND
      return GetNavConfig.fromRoute('/404');
    }
    if (route.location == from) {
      return GetNavConfig.fromRoute(to);
    }
    return route;
  }
}

class Pages {
  static final List<GetPage<dynamic>> routes = <GetPage<dynamic>>[
    GetPage(
      name: '/',
      page: () => const Home(),
      binding: HomeBinding(),
      participatesInRootNavigator: true,
      preventDuplicates: true,
      title: "Home",
      middlewares: [
        ForceNavigateToRouteMiddleware(from: '/', to: '/home'),
      ],
      children: [
        GetPage(
          name: "/game",
          title: "Game",
          binding: GameBinding(),
          page: () => const Game(),
        )
      ],
    ),
  ];
}
