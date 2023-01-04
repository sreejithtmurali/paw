import 'package:stacked/stacked.dart';

import '../../../app/app.router.dart';
import '../../../app/utils.dart';

class SignUpViewModel extends BaseViewModel {
  void NavNext(){
    navigationService.navigateTo(Routes.signUpView2);
  }
}
