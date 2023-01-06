import 'dart:async';

import 'package:stacked/stacked.dart';

import '../../../app/app.locator.dart';

import '../../../services/api_service.dart';

class HomeViewModel extends BaseViewModel {

  final _apiService = locator<ApiService>();
  late Future<List<String>> _bannerImages;



  Future<List<String>> get bannerImages => _bannerImages;

  // Future getBannerImages() async{
  //   print("calling fn frm viewmodel service");
  //
  //   _bannerImages=_apiService.fetchbannerImages();
  //   var documents = await _apiService.fetchbannerImages();
  //   var s=
  //
  //   notifyListeners();
  //   return _bannerImages;
  // }
}
