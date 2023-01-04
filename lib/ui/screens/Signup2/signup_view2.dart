import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_hooks/stacked_hooks.dart';

import '../../../constants/assets.gen.dart';
import '../../tools/screen_size.dart';
import 'signup_view2model.dart';

class SignUpView2 extends StatelessWidget {
  const SignUpView2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SignUpView2Model>.reactive(
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
                                  "Personalize",
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )),
                Positioned(
                  top: ScreenSize.getHeight(double.parse(800.toString()), 140.0),
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
      viewModelBuilder: () => SignUpView2Model(),
    );
  }
}


class TitleSection extends ViewModelWidget<SignUpView2Model> {
  TitleSection({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context, SignUpView2Model viewModel) {
    var usernameController = TextEditingController();
    var passwordController = TextEditingController();
    var cat = true;
    var dog = false;
    var others = false;

    return Form(
        key: _formKey,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 24, top: 67.0, right: 24),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter Email';
                  }
                  return null;
                },
                controller: usernameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
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
              padding: const EdgeInsets.only(left: 24, top: 32.0, right: 24),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter Your Name';
                  }
                  return null;
                },
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Your Name',
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
              padding: const EdgeInsets.only(left: 24, top: 32.0, right: 24),
              child:
              Text("What kind of pet do you have?",style: TextStyle(fontWeight:FontWeight.w500,fontSize: 16,color: Color(0xff393939)),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, top: 32.0, right: 24),
              child:
              Column(
                children: [
                  SizedBox(
                    height: 24,
                    child: Row(
                      children: <Widget>[
                        Checkbox(
                          checkColor: Colors.grey,
                          activeColor: Colors.yellow,
                          value:cat,
                          onChanged: (bool ?value) {
                            cat=value!;


                          },
                        ),
                        SizedBox(width: 10,),
                        Text('Cat(s) ',style: TextStyle(fontSize: 14.0), ),


                      ],
                    ),
                  ),
                  SizedBox(height: 5,),
                  SizedBox(
                    height: 24,
                    child: Row(
                      children: <Widget>[
                        Checkbox(
                          checkColor: Colors.grey,
                          activeColor: Colors.yellow,
                          value:dog,
                          onChanged: (bool ?value) {
                            dog=value!;


                          },
                        ),
                        SizedBox(width: 10,),
                        Text('Dog(s) ',style: TextStyle(fontSize: 14.0), ),


                      ],
                    ),
                  ),
                  SizedBox(height: 5,),
                  SizedBox(
                    height: 24,
                    child: Row(
                      children: <Widget>[
                        Checkbox(
                          checkColor: Colors.grey,
                          activeColor: Colors.yellow,
                          value:others,
                          onChanged: (bool ?value) {
                            others=value!;


                          },
                        ),
                        SizedBox(width: 10,),
                        Text('Other(s) ',style: TextStyle(fontSize: 14.0), ),


                      ],
                    ),
                  ),
                  SizedBox(height: 5,),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24),
              child:
              Row(
                children: <Widget>[
                  Checkbox(
                    checkColor: Colors.grey,
                    activeColor: Colors.yellow,
                    value:others,
                    onChanged: (bool ?value) {
                      others=value!;
                    },
                  ),
                  SizedBox(width: 10,),
                  const Text('I accept terms and conditions ',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500), ),


                ],
              ),
            ),

           SizedBox(
             height: 12,
           ),
            Padding(
              padding: const EdgeInsets.only(left: 24, top: 12.0, right: 24),
              child:
              Container(
                  height: 50,
                  child: ElevatedButton(

                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffffc727),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25))),
                    child:  Text('Submit',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        )),
                    onPressed: () {

                    },

                  )),
            ),
          ],
        ));
  }
}
