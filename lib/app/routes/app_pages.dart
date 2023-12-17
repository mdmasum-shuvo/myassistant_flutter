import 'package:get/get.dart';
import 'package:my_assistant/app/modules/contacts/binding/contacts_binding.dart';
import 'package:my_assistant/app/modules/contacts/view/contacts_view.dart';
import 'package:my_assistant/app/modules/dashboard/binding/dashboard_binding.dart';
import 'package:my_assistant/app/modules/dashboard/view/dashboard_view.dart';
import 'package:my_assistant/app/modules/forget_password/binding/forget_password_binding.dart';
import 'package:my_assistant/app/modules/forget_password/view/forget_password_view.dart';
import 'package:my_assistant/app/modules/leads/binding/leads_binding.dart';
import 'package:my_assistant/app/modules/leads/view/leads_view.dart';
import 'package:my_assistant/app/modules/register/binding/register_binding.dart';
import 'package:my_assistant/app/modules/register/view/register_view.dart';
import 'package:my_assistant/app/modules/reset_password/binding/reset_password_binding.dart';
import 'package:my_assistant/app/modules/reset_password/view/reset_password_view.dart';
import 'package:my_assistant/app/modules/task/binding/task_binding.dart';
import 'package:my_assistant/app/modules/task/view/task_view.dart';
import 'package:my_assistant/app/modules/verification/binding/verification_binding.dart';
import 'package:my_assistant/app/modules/verification/view/verification_view.dart';
import 'package:my_assistant/app/modules/welcome_screen/bindings/welcome_binding.dart';
import 'package:my_assistant/app/modules/welcome_screen/views/welcome_view.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.WELCOME,
      page: () => const WelcomeView(),
      binding: WelcomeBinding(),
    ),

    GetPage(
      name: _Paths.REGISTER,
      page: () => const RegisterView(),
      binding: RegisterBinding(),
    ),

    GetPage(
      name: _Paths.FORGETPASSWORD,
      page: () => const ForgetPasswordView(),
      binding: ForgetPasswordBinding(),
    ),

    GetPage(
      name: _Paths.RESETPASSWORD,
      page: () => const ResetPasswordView(),
      binding: ResetPasswordBinding(),
    ),

    GetPage(
      name: _Paths.VERIFICATION,
      page: () => const VerificationView(),
      binding: VerificationBinding(),
    ),

    GetPage(
      name: _Paths.DASHBOARD,
      page: () =>  const DashboardView(),
      binding: DashboardBinding(),
    ),

    GetPage(
      name: _Paths.CONTACTS,
      page: () => const ContactsView(),
      binding: ContactsBinding(),
    ),

    GetPage(
      name: _Paths.LEADS,
      page: () => const LeadsView(),
      binding: LeadsBinding(),
    ),

    GetPage(
      name: _Paths.TASK,
      page: () => const TaskView(),
      binding: TaskBinding(),
    ),

    // GetPage(
    //   name: _Paths.VERIFICATION,
    //   page: () => const VerificationView(),
    //   binding: VerificationBinding(),
    // ),
  ];
}
