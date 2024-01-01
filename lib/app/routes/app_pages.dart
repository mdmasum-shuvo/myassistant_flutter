import 'package:get/get.dart';

import '../modules/contact_detail/bindings/contact_detail_binding.dart';
import '../modules/contact_detail/views/contact_detail_view.dart';
import '../modules/contacts/binding/contacts_binding.dart';
import '../modules/contacts/view/contacts_view.dart';
import '../modules/create_lead/bindings/create_lead_binding.dart';
import '../modules/create_lead/views/create_lead_view.dart';
import '../modules/create_task/bindings/create_task_binding.dart';
import '../modules/create_task/views/create_task_view.dart';
import '../modules/dashboard/binding/dashboard_binding.dart';
import '../modules/dashboard/view/dashboard_view.dart';
import '../modules/dialer/bindings/dialer_binding.dart';
import '../modules/dialer/views/dialer_view.dart';
import '../modules/forget_password/binding/forget_password_binding.dart';
import '../modules/forget_password/view/forget_password_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/lead_detail/bindings/lead_detail_binding.dart';
import '../modules/lead_detail/views/lead_detail_view.dart';
import '../modules/leads/binding/leads_binding.dart';
import '../modules/leads/view/leads_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/register/binding/register_binding.dart';
import '../modules/register/view/register_view.dart';
import '../modules/reset_password/binding/reset_password_binding.dart';
import '../modules/reset_password/view/reset_password_view.dart';
import '../modules/task/binding/task_binding.dart';
import '../modules/task/view/task_view.dart';
import '../modules/task_detail/bindings/task_detail_binding.dart';
import '../modules/task_detail/views/task_detail_view.dart';
import '../modules/verification/binding/verification_binding.dart';
import '../modules/verification/view/verification_view.dart';
import '../modules/welcome_screen/bindings/welcome_binding.dart';
import '../modules/welcome_screen/views/welcome_view.dart';

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
      page: () => const DashboardView(),
      binding: DashboardBinding(),
    ),

    GetPage(
      name: _Paths.CONTACTS,
      page: () => ContactsView(),
      binding: ContactsBinding(),
    ),

    GetPage(
      name: _Paths.LEADS,
      page: () => LeadsView(),
      binding: LeadsBinding(),
    ),

    GetPage(
      name: _Paths.TASK,
      page: () => TaskView(),
      binding: TaskBinding(),
    ),

    // GetPage(
    //   name: _Paths.VERIFICATION,
    //   page: () => const VerificationView(),
    //   binding: VerificationBinding(),
    // ),
    GetPage(
      name: _Paths.CREATE_LEAD,
      page: () => const CreateLeadView(),
      binding: CreateLeadBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_TASK,
      page: () => const CreateTaskView(),
      binding: CreateTaskBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.LEAD_DETAIL,
      page: () => const LeadDetailView(),
      binding: LeadDetailBinding(),
    ),
    GetPage(
      name: _Paths.TASK_DETAIL,
      page: () => const TaskDetailView(),
      binding: TaskDetailBinding(),
    ),
    GetPage(
      name: _Paths.CONTACT_DETAIL,
      page: () => const ContactDetailView(),
      binding: ContactDetailBinding(),
    ),
    GetPage(
      name: _Paths.DIALER,
      page: () => const DialerView(),
      binding: DialerBinding(),
    ),
  ];
}
