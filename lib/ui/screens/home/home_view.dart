
import 'package:flutter/material.dart';

import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.nonReactive(
      builder: (context, viewModel, child) => Scaffold(
        body: SizedBox.expand(
          child: ListView(

            children:  [
             Text("data")
            ],
          ),
        ),

      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}


