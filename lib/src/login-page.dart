import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp1/palatte.dart';
import '../widgets/widget.dart';

class LoginPage extends StatelessWidget {
  // const LoginPage({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  Container(
                    height: 180,
                    child: Center(
                      child: Text(
                        'Đăng Nhập',
                        style: kHeading,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Form(
                    key: _formKey,
                    // padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            TextInput(
                              icon: FontAwesomeIcons.solidEnvelope,
                              hint: 'Email',
                              inputType: TextInputType.emailAddress,
                              inputAction: TextInputAction.next,
                            ),
                            PasswordInput(
                              icon: FontAwesomeIcons.lock,
                              hint: 'Password',
                              inputAction: TextInputAction.done,
                            ),
                            Text(
                              'Quên Mật Khẩu?',
                              style: kBodyText,
                            )
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 100,
                            ),
                            // RoundedBottom(
                            //   buttonText: 'Đăng nhập',
                            // ),
                            OutlinedButton(
                                onPressed: () {
                                  print('Login');
                                  if (_formKey.currentState!.validate()) {
                                    print("đăng nhập thành công");
                                  }
                                },
                                child: RoundedBottom(
                                  buttonText: 'Đăng Nhập',
                                )),
                            SizedBox(
                              height: 50,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Colors.white, width: 1))),
                              child: Text(
                                'Tạo Tài Khoản',
                                style: kBodyText,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
