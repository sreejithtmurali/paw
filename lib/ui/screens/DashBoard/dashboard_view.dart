import 'package:flutter/material.dart';
import 'package:paw/models/RspBanner.dart';
import 'package:paw/ui/screens/Cart/cart_view.dart';
import 'package:paw/ui/screens/home/home_view.dart';
import 'package:paw/ui/widgets/bottom_navigation.dart';
import 'package:stacked/stacked.dart';
import '../../../constants/assets.gen.dart';
import '../../tools/model_future_builder.dart';
import '../../tools/screen_size.dart';
import '../../widgets/banner.dart';
import 'dashboard_viewmodel.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<Widget> pages=[
      HomeView(),CartView(), HomeView(),CartView()
    ];

    return ViewModelBuilder<DashBoardViewModel>.nonReactive(
      onModelReady: (model) {
        model.getSponsorSlide();
      },
      builder: (context, viewModel, child) => Scaffold(

          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            leading: Padding(
              padding: const EdgeInsets.only(top: 18.0, bottom: 18),
              child: Assets.images.logo.image(height: 16, width: 16),
            ),
            title: const Text(
              "Paw",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                  color: Color(0xffffc727)),
            ),
          ),
          body: pages[viewModel.current],
          bottomNavigationBar:Bottm2()
    
        ),

      viewModelBuilder: () => DashBoardViewModel(),
    );
  }






}
class Bottm2 extends ViewModelWidget<DashBoardViewModel> {
  const Bottm2({super.key});



  @override
  Widget build(BuildContext context, DashBoardViewModel viewModel) {

    int c=0;
    c=viewModel.current;
    return BottomNavigationBar(
      onTap: (int value) {
        c=value;
        viewModel.updateindex(c);


      },
      selectedFontSize: 14,
      selectedIconTheme: IconThemeData(color: Colors.amberAccent, size: 24),
      selectedItemColor: Colors.amberAccent,
      selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
      unselectedLabelStyle: TextStyle(color: Colors.grey),
      showUnselectedLabels: true,
      unselectedIconTheme: IconThemeData(

        color: Colors.grey,
      ),
      unselectedItemColor: Colors.grey,

      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "Cart"),
        BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Wish"),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile")
      ],
    );
  }
}



