import 'package:astro_clash/constants/enums/enums.dart';
import 'package:astro_clash/screens/nav/nav_screen.dart';
import 'package:flutter/material.dart';
import '../../../configs/configs.dart';

class TabNavigator extends StatelessWidget {
  static const String tabNavigatorRoot = '/';

  final GlobalKey<NavigatorState> navigatorKey;
  final BottomNavItem item;

  const TabNavigator({
    Key? key,
    required this.navigatorKey,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeBuilders = _routeBuilders();
    return Navigator(
      key: navigatorKey,
      initialRoute: tabNavigatorRoot,
      onGenerateInitialRoutes: (_, initialRoute) {
        return [
          MaterialPageRoute(
            settings: const RouteSettings(name: tabNavigatorRoot),
            builder: (context) => routeBuilders[initialRoute]!(context),
          )
        ];
      },
      onGenerateRoute: CustomRouter.onGenerateNestedRoute,
    );
  }

  Map<String, WidgetBuilder> _routeBuilders() {
    return {tabNavigatorRoot: (context) => _getScreen(context, item)};
  }

  Widget _getScreen(BuildContext context, BottomNavItem item) {
    switch (item) {
      case BottomNavItem.feed:
        return const Scaffold(
            body: Center(
          child: Text('temp'),
        ));
      case BottomNavItem.create:
        return const Scaffold(
            body: Center(
          child: Text('temp'),
        ));
      case BottomNavItem.profile:
        return const Scaffold(
            body: Center(
          child: Text('temp'),
        ));
      case BottomNavItem.notifications:
        return const Scaffold(
            body: Center(
          child: Text('temp'),
        ));
      case BottomNavItem.search:
        return const Scaffold(
            body: Center(
          child: Text('temp'),
        ));
      // case BotomNavItem.profile:
      //   return BlocProvider<ChampionsScreenCubit>(
      //     create: (context) => ChampionsScreenCubit(
      //       championRepo: context.read<ChampionRepo>(),
      //     )..getChampions(),
      //     child: const ChampionsScreen(),
      //   );
      default:
        return const Scaffold();
    }
  }
}
