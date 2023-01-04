import 'package:stacked/stacked.dart';

class SignUpView2Model extends BaseViewModel {
  int counter = 0;

  void updateTitle() {
    counter++;
    notifyListeners();
  }
}
