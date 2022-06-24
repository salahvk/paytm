import 'package:flutter/material.dart';
import 'package:paytm_advanced/constants/colors.dart';
import 'package:paytm_advanced/constants/length.dart';
import 'package:paytm_advanced/constants/textDecoration.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isChecked = false;
  bool loading = false;
  var focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: MediaQuery.of(context).size.width / 8,
            top: -113,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: const Image(
                color: Color.fromARGB(255, 87, 203, 191),
                fit: BoxFit.fill,
                image: AssetImage(
                  'assets/images/flower.png',
                ),
              ),
            ),
          ),
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          border: Border.all(color: Colors.black),
                        ),
                        width: size.width / 2.5,
                        height: size.width / 14,
                        child: const Center(
                          child: Text(
                            'Change Language',
                            style: boldText,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            border: Border.all(color: Colors.black),
                          ),
                          width: size.width / 6,
                          height: size.width / 14,
                          child: Center(
                            child: GestureDetector(
                              child: const Text(
                                'Skip',
                                style: boldText,
                              ),
                              onTap: () {
                                Navigator.of(context).pushNamed('Home');
                                print('object');
                              },
                            ),
                          )),
                    )
                  ],
                ),
                ksizedbox1,
                const Text(
                  'Login or Create a New Account',
                  style: boldText2,
                ),
                ksizedbox,
                const Text(
                    'Pay using UPI, Postpaid, Wallet, Bank Accounts and '),
                ksizedbox,
                const Text('Cards'),
                ksizedbox1,
                const Text(
                  'Mobile Number',
                  style: mobiletext,
                ),
                ksizedbox,
                TextFormField(
                  decoration: const InputDecoration(
                      prefix: Text('+91'), counterText: ''),
                  keyboardType: TextInputType.number,
                  focusNode: focusNode,
                  maxLength: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        child: const Text('Need help?'), onPressed: () {}),
                  ],
                ),
                ksizedbox1,
                Row(children: [
                  Checkbox(
                    checkColor: Colors.white,
                    fillColor:
                        MaterialStateProperty.resolveWith<Color>((states) {
                      if (states.contains(MaterialState.disabled)) {
                        return Colors.blue;
                      }
                      return Colors.blue;
                    }),
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  const Text(
                    'Get reminders & improve paytm experience by giving \naccess to text messages. Get updates on whatsapp ',
                    style: shorttext1,
                  ),
                ]),
                Container(
                  margin: EdgeInsets.only(top: size.height / 25),
                  height: size.height / 17,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(color: borderColor, width: 1),
                  ),
                  child: Center(
                    child: loading == false
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.lock,
                                color: Colors.white,
                              ),
                              kwidthbox10,
                              Text(
                                "Proceed Securely",
                                style: TextStyle(
                                    fontSize: size.height / 51,
                                    fontFamily: "Open",
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                            ],
                          )
                        : Container(
                            child: const CircularProgressIndicator(
                              backgroundColor: fabColor,
                              valueColor:
                                  AlwaysStoppedAnimation<Color>(Colors.white),
                            ),
                          ),
                  ),
                ),
                ksizedbox,
                Row(
                  children: [
                    const Text(
                      'By proceeding,you agree to our ',
                      style: shorttext,
                    ),
                    GestureDetector(
                      child: const Text(
                        'Terms & Conditions ',
                        style: buttonttext,
                      ),
                      onTap: () {
                        print('Hello');
                      },
                    ),
                    const Text('&', style: shorttext),
                    GestureDetector(
                      child: const Text(
                        ' privacy Policy. ',
                        style: buttonttext,
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
                const Text(
                  'If you provide permission to access your contact list Paytm shall sync your contacts with its servers SMS may be sent from your mobile number for verification purposes. Standard operator Charges may apply for SMS. ',
                  textAlign: TextAlign.justify,
                  style: shorttext,
                )
              ],
            ),
          )),
        ],
      ),
    );
  }
}
