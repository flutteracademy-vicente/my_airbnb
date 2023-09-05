import 'package:go_router/go_router.dart';
import 'package:my_airbnb/ui/screens/home_screen.dart';
import 'package:my_airbnb/ui/screens/hotel_home_screen.dart';

enum AppRoutes {
  startApp,
  app1,
}

final goRouter = GoRouter(
  debugLogDiagnostics: true,
  routes: [
    // ' / '
    GoRoute(
      path: '/',
      name: AppRoutes.startApp.name,
      builder: (context, state) {
        return const MyHomePage();
      },
      routes: [
        // '  /App1  '
        GoRoute(
            path: 'App1',
            name: AppRoutes.app1.name,
            builder: (context, state) {
              return const HotelHomeScreen();
            },
            routes: [
              GoRoute(
                path: 'Details01',
                name: 'Details01',
                builder: (context, state) {
                  return const MyHomePage();
                },
              ),
            ]),
        // '  /App2  '
        GoRoute(
            path: 'App2',
            name: 'App2',
            builder: (context, state) {
              return const MyHomePage();
            },
            routes: [
              // '  /App2/Details1  '
              GoRoute(
                path: 'Details1',
                name: 'Details1',
                builder: (context, state) {
                  return const MyHomePage();
                },
              ),
              GoRoute(
                path: 'Details2',
                name: 'Details2',
                builder: (context, state) {
                  return const MyHomePage();
                },
              ),
              GoRoute(
                path: 'Details3',
                name: 'Details3',
                builder: (context, state) {
                  return const MyHomePage();
                },
              ),
              GoRoute(
                path: 'Details4',
                name: 'Details4',
                builder: (context, state) {
                  return const MyHomePage();
                },
              ),
            ]),
      ],
    ),
  ],
);
