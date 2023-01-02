import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../constants/assets.gen.dart';
import '../../tools/screen_size.dart';
import 'splash_viewmodel.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashViewModel>.reactive(
      onModelReady: (model) => model.startTimer(),
      builder: (context, model, child) {
        return Scaffold(
          body: Container(
            width: ScreenSize.width,
            height: ScreenSize.height,
            alignment: Alignment.center,
            child: Stack(children:[
              Padding(
                padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                child: Assets.images.bg.image(height: ScreenSize.height,
                width: ScreenSize.width-100),
              ),
              Center(child: Assets.images.logo.image(height: ScreenSize.height/6,
              width: ScreenSize.height/6)),
            ] ),
          ),
        );
      },
      viewModelBuilder: () => SplashViewModel(),
    );
  }
}
