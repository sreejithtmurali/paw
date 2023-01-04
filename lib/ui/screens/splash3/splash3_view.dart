import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../constants/assets.gen.dart';
import '../../tools/screen_size.dart';
import 'splash3_viewmodel.dart';

class Splash3View extends StatelessWidget {
  const Splash3View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<Splash3ViewModel>.reactive(
      onModelReady: (model) => model.startTimer(),
      builder: (context, model, child) {
        return Scaffold(
          body: SafeArea(
            top: true,
            bottom: true,
            left: true,
            right: true,
            child: Container(
              width: ScreenSize.width,
              height: ScreenSize.height,
              alignment: Alignment.center,
              child: Stack(children:[
                Padding(
                  padding: const EdgeInsets.only(left: 24.0,right: 24.0,top: 16.0,bottom: 16.0),
                  child: Assets.images.bg.image(height: ScreenSize.height,
                  width: ScreenSize.width),
                ),
                Center(child: Assets.images.logo.image(height: ScreenSize.height/6,
                width: ScreenSize.height/6)),
              ] ),
            ),
          ),
        );
      },
      viewModelBuilder: () => Splash3ViewModel(),
    );
  }
}
