import 'package:chore_butler/modules/login/screens/child_register.dart';
import 'package:chore_butler/modules/login/screens/login.dart';
import 'package:chore_butler/modules/login/screens/pick_role.dart';
import 'package:chore_butler/modules/login/screens/register.dart';
import 'package:get/get.dart';
import 'app_routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(name: AppRoutes.pick_role, page: () => PickRole()),
    GetPage(
      name: AppRoutes.login,
      page: () => LoginScreen(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: AppRoutes.register,
      page: () => RegisterScreen(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: AppRoutes.child_register,
      page: () => ChildRegister(),
      transition: Transition.noTransition,
    ),
  ];
}
