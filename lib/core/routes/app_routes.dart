import 'package:get/get.dart';
import 'package:pfe/core/widgets/app_main.dart';
import 'package:pfe/features/Auth/screens/login_page.dart';
import 'package:pfe/features/Auth/screens/forgot_password_page.dart';
import 'package:pfe/features/catalogue/catalogue_page.dart';
import 'package:pfe/features/clients/views/clients_page.dart';
import 'package:pfe/features/commande/views/screens/commercial_orders_page.dart';
import 'package:pfe/features/commande/views/screens/select_client_page.dart';
import 'package:pfe/features/commande/views/screens/select_products_page.dart';
import 'package:pfe/features/commande/views/screens/commandes_modifiees_page.dart';
import 'package:pfe/features/commande/views/screens/commande_modifiee_details_page.dart';
import 'package:pfe/features/commande/views/screens/commande_details_page.dart';
import 'package:pfe/features/documents/documents_valides_page.dart';
import 'package:pfe/features/home/views/commercial_home_page.dart';
import 'package:pfe/features/objectif/views/objectifs_page.dart';
import 'package:pfe/features/profile/views/profile_page.dart';
import 'package:pfe/features/reclamation/reclamation_form_page.dart';
import 'package:pfe/features/reclamation/reclamation_home_page.dart';
import 'package:pfe/features/reclamation/reclamations_page.dart';
import 'package:pfe/features/visite/views/create_visite_multi_page.dart';
import 'package:pfe/features/visite/views/create_visite_page.dart';
import 'package:pfe/features/visite/views/map_circuit_page.dart';
import 'package:pfe/features/visite/views/all_visites_map_page.dart';
import 'package:pfe/features/visite/views/circuit_viewer_page.dart';
import 'package:pfe/features/visite/views/positions_map_page.dart';
import 'package:pfe/features/notifications/notifications_page.dart';
import 'package:pfe/features/commande/models/commande_model.dart';
import 'package:pfe/features/profile/views/edit_profile_page.dart';


class AppRoutes {
  static const String loginPage = '/login';
  static const String forgotPasswordPage = '/forgot-password';
  static const String homePage = '/home';
  static const String commandesPage = '/commandes';
  static const String commandesModifieesPage = '/commandes/modifiees';
  static const String commandeModifieeDetailsPage = '/commandes/modifiees/details';
  static const String commandeDetailsPage = '/commandes/details';
  static const String selectProducts = '/select-products';
  static const String selectClient = '/select-client';
  static const String clientsPage = '/clients';
  static const String visitesPage = '/visites';
  static const String visiteForm = '/visite-form';
  static const String mapCircuit = '/map-circuit';
  static const String allVisitesMap = '/all-visites-map';
  static const String circuitViewer = '/circuit-viewer';
  static const String reclamations = '/reclamations';
  static const String mesReclamations = '/reclamations/mes';
  static const String newReclamation = '/reclamations/new';
  static const String reclamationHome = '/reclamations/home';
  static const String cataloguePage = '/catalogue';
  static const String visiteCreate = '/visite/create';
  static const String positionsMap = '/positions-map';
  static const String notificationsPage = '/notifications';
  static const String documentsValidesPage = '/documents-valides';
  static const String profilePage = '/profile';
  static const String editProfilePage = '/edit-profile';
  static const String objectifsPage = '/objectifs';
  static const String bottomNavWrapper = '/bottom-nav-wrapper';


}

class AppPages {
  static final routes = [
    GetPage(name: AppRoutes.loginPage, page: () => const LoginPage()),
    GetPage(name: AppRoutes.forgotPasswordPage, page: () => const ForgotPasswordPage()),
    GetPage(name: AppRoutes.homePage, page: () => const CommercialHomePage()),
    GetPage(name: AppRoutes.commandesPage, page: () => CommercialOrdersPage()),
    GetPage(name: AppRoutes.commandesModifieesPage, page: () => const CommandesModifieesPage()),
    GetPage(name: AppRoutes.commandeModifieeDetailsPage, page: () {
      final commandeData = Get.arguments['commande'] as Map<String, dynamic>;
      final commande = CommandeModel.fromJson(commandeData);
      return CommandeModifieeDetailsPage(
        commande: commande,
        modifications: Get.arguments['modifications'],
      );
    }),
    GetPage(name: AppRoutes.selectProducts, page: () => const SelectProductsPage()),
    GetPage(name: AppRoutes.selectClient, page: () => SelectClientPage()),
    GetPage(name: AppRoutes.clientsPage, page: () => const ClientsPage()),
    GetPage(name: AppRoutes.visitesPage, page: () => const CreateVisitePage()),
   
    GetPage(name: AppRoutes.reclamations, page: () => const ReclamationHomePage()),
    GetPage(name: AppRoutes.mesReclamations, page: () => MesReclamationsPage()),
    GetPage(
      name: AppRoutes.newReclamation,
      page: () => ReclamationFormPage(),
    ),
    GetPage(name: AppRoutes.cataloguePage, page: () => const CataloguePage()),
    GetPage(name: AppRoutes.visiteCreate, page: () => const CreateVisitePage()),
    GetPage(name: AppRoutes.mapCircuit, page: () => const MapCircuitPage()),
    GetPage(name: AppRoutes.allVisitesMap, page: () => const AllVisitesMapPage()),
    GetPage(name: AppRoutes.circuitViewer, page: () => const CircuitViewerPage()),
    GetPage(name: AppRoutes.positionsMap, page: () => const PositionsMapPage()),
    GetPage(name: AppRoutes.notificationsPage, page: () => const NotificationsPage()),
    GetPage(name: AppRoutes.documentsValidesPage, page: () => const DocumentsValidesPage()),
    GetPage(name: AppRoutes.commandeDetailsPage, page: () => CommandeDetailsPage(
      commande: Get.arguments['commande'],
    )),
    GetPage(name: AppRoutes.objectifsPage, page: () => ObjectifsPage()),
    GetPage(name: AppRoutes.bottomNavWrapper, page: () => BottomNavWrapper()),


    GetPage(
      name: AppRoutes.profilePage,
      page: () => ProfilePage(),
    ),
    GetPage(
      name: AppRoutes.editProfilePage,
      page: () => const EditProfilePage(),
    ),

    
  ];
}
