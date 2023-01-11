import 'package:flutter/material.dart';
import 'package:paw/models/RspBanner.dart';
import 'package:stacked/stacked.dart';
import '../../../constants/assets.gen.dart';
import '../../tools/model_future_builder.dart';
import '../../tools/screen_size.dart';
import '../../widgets/banner.dart';
import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.nonReactive(
      onModelReady: (model) => model.getSponsorSlide(),
      builder: (context, viewModel, child) => Scaffold(
        body: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Color(0xffa6a6a6),
                      ),
                      suffixIcon: Icon(
                        Icons.mic,
                        color: Color(0xffa6a6a6),
                      ),
                      border: OutlineInputBorder(),
                      labelText: 'Search Product or Animal',
                      labelStyle: TextStyle(color: Color(0xffa6a6a6)),
                      floatingLabelStyle: TextStyle(color: Colors.black),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 1, color: Color(0xffa6a6a6)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 1, color: Color(0x74000000)),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.red),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding:  EdgeInsets.only(left: 8.0, right: 8.0),
                  child: SizedBox(
                      height: 200,
                      child:TitleSection()),
                ),
                const SizedBox(
                  height: 32,
                ),
                Padding(
                  padding:  EdgeInsets.only(left: 18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:  const [
                      Text(
                        "Latest Arrivals",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF222222),
                            fontSize: 18),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SizedBox(
                    height:
                        ScreenSize.getHeight(double.parse(800.toString()), 700),
                    child: GridView.count(
                      physics: const NeverScrollableScrollPhysics(),
                      crossAxisCount: 2,
                      childAspectRatio:
                          MediaQuery.of(context).size.height / 1000,
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 16.0,
                      children: List.generate(12, (index) {
                        return Card(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            //set border radius more than 50% of height and width to make circle
                          ),
                          child: Container(
                            height: 445,
                            decoration: BoxDecoration(
                              color: Color(0xf5ffffff),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: ScreenSize.getHeight(
                                      double.parse(800.toString()), 128.0),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                          top: 0,
                                          left: 0,
                                          right: 0,
                                          child: Assets.images.dog.image(
                                              height: ScreenSize.getHeight(
                                                  double.parse(800.toString()),
                                                  128.0),
                                              fit: BoxFit.fill)),
                                      Positioned(
                                          top: 10,
                                          right: 10,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Color(0xffefeeee),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            width: ScreenSize.getWidth(
                                                double.parse(360.toString()),
                                                60.0),
                                            height: ScreenSize.getHeight(
                                                double.parse(800.toString()),
                                                20.0),
                                            child: Center(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text("4.5"),
                                                  Assets.images.star.image(
                                                      height: 14, width: 14)
                                                ],
                                              ),
                                            ),
                                          ))
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "Dog Safe Harness",
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Color(0xff3d3d3d),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 5.0, top: 2),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const [
                                      Expanded(
                                          child: Text(
                                        "Dog Care",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color(0xff3d3d3d),
                                            fontWeight: FontWeight.w500),
                                      )),
                                      Padding(
                                        padding: EdgeInsets.only(right: 8.0),
                                        child: Text(
                                          "In Stock",
                                          style: TextStyle(
                                              fontSize: 8,
                                              color: Color(0xff34a853),
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 5.0, top: 5),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "₹1299",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xff3d3d3d),
                                            fontWeight: FontWeight.w500),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      const Center(
                                          child: Text(
                                        "₹3600",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color(0xff3d3d3d),
                                            fontWeight: FontWeight.w500),
                                      )),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      SizedBox(
                                          height: 24,
                                          child: ElevatedButton(
                                              onPressed: () {
                                                viewModel.navCart();
                                              },
                                              child: const Text(
                                                "Add Cart",
                                                style: TextStyle(fontSize: 12),
                                              )))
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
class TitleSection extends ViewModelWidget<HomeViewModel> {
  const TitleSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return  ViewModelBuilder<HomeViewModel>.reactive(
      onModelReady: (model) => model.getSponsorSlide(),
      builder: (context, model, child) =>
          ModelFutureListBuilder<RspBanner>(
              busy: model.isBusy,
              data: model.banner_images,
              builder: (context, data, child) {
                return BannerWidget(list: data);
              }),

      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
