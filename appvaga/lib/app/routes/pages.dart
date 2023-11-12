import 'package:appvaga/app/modules/historico/historico_binding.dart';
import 'package:appvaga/app/modules/historico/historico_page.dart';
import 'package:appvaga/app/modules/login/login_binding.dart';
import 'package:appvaga/app/modules/login/login_page.dart';
import 'package:appvaga/app/modules/mensalista/mensalista_binding.dart';
import 'package:appvaga/app/modules/mensalista/mensalista_page.dart';
import 'package:appvaga/app/modules/menu/menu_binding.dart';
import 'package:appvaga/app/modules/menu/menu_page.dart';
import '../modules/cadastroUser/passo5/user_bindig5.dart';
import '../modules/cadastroUser/passo5/user_page5.dart';
import '../modules/cadastroUser/passo1/user_binding1.dart';
import '../modules/cadastroUser/passo3/user_binding3.dart';
import '../modules/cadastroUser/passo3/user_page3.dart';
import '../modules/cadastroUser/passo1/user_page1.dart';
import '../modules/cadastroUser/passo4/user_binding4.dart';
import '../modules/cadastroUser/passo4/user_page4.dart';
import '../modules/cadastroUser/passo2/user_binding2.dart';
import '../modules/cadastroUser/passo2/user_page2.dart';
import 'package:appvaga/app/routes/routes.dart';
import 'package:get/get.dart';

import '../modules/reserva_vagas/vagas_binding.dart';
import '../modules/reserva_vagas/vagas_page.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.login,
      page: () => const LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.cadastroUser1,
      page: () => const Userpage1(),
      binding: UserBinding1(),
    ),
    GetPage(
      name: Routes.cadastroUser2,
      page: () => const Userpage2(),
      binding: UserBinding2(),
    ),
    GetPage(
      name: Routes.cadastroUser3,
      page: () => const Userpage3(),
      binding: UserBinding3(),
    ),
    GetPage(
      name: Routes.cadastroUser4,
      page: () => const Userpage4(),
      binding: UserBinding4(),
    ),
    GetPage(
      name: Routes.cadastroUser5,
      page: () => const Userpage5(),
      binding: UserBinding5(),
    ),
    GetPage(
      name: Routes.menu,
      page: () => const MenuPage(),
      binding: MenuBinding(),
    ),
    GetPage(
      name: Routes.vagas,
      page: () => const VagasPage(),
      binding: VagasBinding(),
    ),
    GetPage(
      name: Routes.mensalista,
      page: () => const MensalistaPage(),
      binding: MensalistaBinding(),
    ),
    GetPage(
      name: Routes.historico,
      page: () => const HistoricoPage(),
      binding: HistoricoBinding(),
    ),
  ];
}
