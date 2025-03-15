import 'package:chore_butler/modules/Child/Login/screens/child_login.dart';
import 'package:chore_butler/modules/Child/Register/screens/child_register.dart';
import 'package:chore_butler/modules/Child/Register/screens/child_register_info.dart';
import 'package:chore_butler/modules/Parents/Login/screens/login.dart';
import 'package:chore_butler/modules/pick_role/screens/pick_role.dart';
import 'package:chore_butler/modules/Parents/Register/screens/register.dart';
import 'package:get/get.dart';
import 'app_routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.pick_role,
      page: () => PickRole(),
      transition: Transition.noTransition,
    ),
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
    GetPage(
      name: AppRoutes.child_register_info,
      page: () => ChildRegisterInfo(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: AppRoutes.child_login,
      page: () => ChildLogin(),
      transition: Transition.noTransition,
    ),
  ];
}
