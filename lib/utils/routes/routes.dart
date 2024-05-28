import 'package:flutter/material.dart';
import 'package:washmyclothes/auth/login_signup.dart';
import 'package:washmyclothes/order/order_page.dart';
import 'package:washmyclothes/pickup/pickup.dart';
import 'package:washmyclothes/trackorder/track_order.dart';
import 'package:washmyclothes/utils/routes/routes_name.dart';
import 'package:washmyclothes/widgets/bottom_bnavigation.dart';

class Routes {
  static Route<dynamic> generateRoute(
    RouteSettings settings,
  ) {
    switch (settings.name) {
      case RoutesName.loginsinnup:
        return MaterialPageRoute(
            builder: (BuildContext context) => LoginSignup());

      case RoutesName.bottomnav:
        return MaterialPageRoute(
            builder: (
          BuildContext context,
        ) =>
                Bottomnavbar());

      case RoutesName.orderpage:
        return MaterialPageRoute(
            builder: (
          BuildContext context,
        ) =>
                const OrdersPage());

      case RoutesName.trackorder:
        return MaterialPageRoute(
            builder: (
          BuildContext context,
        ) =>
                const TrackOrderPage());

      case RoutesName.pickuppage:
        return MaterialPageRoute(
            builder: (
          BuildContext context,
        ) =>
                const PickupPage());

      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(
              child: Text('No route defined'),
            ),
          );
        });
    }
  }
}
