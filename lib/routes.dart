import 'package:get/get.dart';
import 'package:onboarding/views/auth/login/login_screen.dart';
import 'core/constant/app_routes.dart';
import 'core/middleware/my_middleware.dart';

List<GetPage<dynamic>>? routes = [
  //================================ Auth ===========================================
  GetPage(
      name: AppRoutes.login,
      page: () =>  LoginScreen(),
      middlewares: [MyMiddleWare()]),

];


