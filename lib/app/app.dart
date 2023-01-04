import 'package:paw/ui/screens/Signup/signup_view.dart';
import 'package:paw/ui/screens/Signup2/signup_view2.dart';
import 'package:paw/ui/screens/login/login_view.dart';
import 'package:paw/ui/screens/splash2/splash2_view.dart';
import 'package:paw/ui/screens/splash3/splash3_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

import '../services/api_service.dart';
import '../ui/screens/home/home_view.dart';
import '../ui/screens/splash/splash_view.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: SplashView, initial: true),
    MaterialRoute(page: Splash2View),
    MaterialRoute(page: Splash3View),
    MaterialRoute(page: HomeView),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: SignUpView),
    MaterialRoute(page: SignUpView2),
  ],
  dependencies: [
    LazySingleton(classType: ApiService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: BottomSheetService),
  ],
)
class AppSetup {}
