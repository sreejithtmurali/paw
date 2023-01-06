import 'package:flutter/material.dart';

import 'package:stacked/stacked.dart';


import '../../../constants/assets.gen.dart';
import '../../tools/screen_size.dart';
import 'login_viewmodel.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
      builder: (context, model, child) {
        return Scaffold(
          body: SafeArea(
            top: true,
            bottom: true,
            child: Container(
              width: ScreenSize.width,
              height: ScreenSize.height,
              alignment: Alignment.center,
              child: Stack(children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 24.0, right: 24.0, top: 16.0, bottom: 16.0),
                  child: Assets.images.bg.image(
                      height: ScreenSize.height, width: ScreenSize.width),
                ),
                Positioned(
                    top: ScreenSize.getHeight(
                        double.parse(800.toString()), 45.0),
                    left:
                        ScreenSize.getWidth(double.parse(360.toString()), 17.0),
                    child: SizedBox(
                      width: ScreenSize.getWidth(
                          double.parse(360.toString()), 45.0),
                      height: ScreenSize.getHeight(
                          double.parse(800.toString()), 45.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          BackButton(
                            color: Colors.black,
                          ),
                        ],
                      ),
                    )),
                Positioned(
                    top: ScreenSize.getHeight(
                        double.parse(800.toString()), 129.0),
                    child: SizedBox(
                      width: ScreenSize.getWidth(
                          double.parse(360.toString()), 255.0),
                      height: ScreenSize.getHeight(
                          double.parse(800.toString()), 479.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(left: 24),
                                child: Text(
                                  "Happy to see you back",
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w200,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(left: 24, top: 6),
                                child: Text(
                                  "Login to continue exploring",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )),
                Positioned(
                  top: ScreenSize.getHeight(double.parse(800.toString()), 207.0),
                  left: 0,
                  right: 0,
                  child: SizedBox(
                      width: ScreenSize.width,
                      height: ScreenSize.getHeight(
                          double.parse(800.toString()), 600.0),
                      child: TitleSection()),
                ),
              ]),
            ),
          ),
        );
      },
      viewModelBuilder: () => LoginViewModel(),
    );
  }
}


class TitleSection extends ViewModelWidget<LoginViewModel> {
  TitleSection({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context, LoginViewModel viewModel) {
    var usernameController = TextEditingController();
    var passwordController = TextEditingController();

    return Form(
        key: _formKey,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 24, top: 67.0, right: 24),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter Username';
                  }
                  return null;
                },
                controller: usernameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                  labelStyle:  TextStyle(color: Colors.grey),
                  floatingLabelStyle:  TextStyle(color: Colors.black),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Color(0x74000000)),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 1, color: Colors.red),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, top: 24.0, right: 24),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter password';
                  }
                  return null;
                },
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  labelStyle:  TextStyle(color: Colors.grey),
                  floatingLabelStyle:  TextStyle(color: Colors.black),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Color(0x74000000)),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 1, color: Colors.red),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, top: 6.0,right: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Forgot Password',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, top: 6.0, right: 24),
              child: Container(
                  height: 50,
                  child: ElevatedButton(

                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffffc727),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25))),
                    child:  Text('Login',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        )),
                    onPressed: () {
                     viewModel.navHomr();
                    },

                  )),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 24, top: 12.0, right: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'or',
                    style: TextStyle(fontSize: 14, color: Color(0xff092f92)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, top: 12.0, right: 24),
              child: Container(
                  height: 50,
                  child: ElevatedButton.icon(

                    style: ElevatedButton.styleFrom(
                       backgroundColor: Color(0xbaffffff),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25))),
                    label: const Text('Continue with Google',
                        style: TextStyle(
                          fontSize: 16,
                          color:Color(0xff807e7e),
                        )),
                    onPressed: () {
                      // model.googleLogin();
                    },
                    icon: Assets.images.img.image(width: 18, height: 18),
                  )),
            ),
          ],
        ));
  }
}
