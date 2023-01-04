import 'package:paw/app/app.router.dart';
import 'package:paw/app/utils.dart';
import 'package:stacked/stacked.dart';

class LoginViewModel extends BaseViewModel {
 void navHomr(){
   navigationService.navigateTo(Routes.homeView);
 }
}
