import 'package:flutter/material.dart';
import 'package:paytm_advanced/constants/textDecoration.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:uuid/uuid.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var uuid = const Uuid();
    return SingleChildScrollView(
      child: Container(
          height: size.height * 5,
          width: size.width / 1.2,
          color: Colors.white,
          child: SafeArea(
              child: Stack(
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                SizedBox(
                  height: size.width / 9,
                ),
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 0.5,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    width: size.width / 1.3,
                    height: size.height / 1.3,
                    child: Column(
                      children: [
                        SizedBox(
                          height: size.width / 8,
                        ),
                        const Text(' Muhammed salah v k'),
                        const Text('UPI ID: 9400366139@paytm copy'),
                        const Text('paytm'),
                        QrImage(
                          data: uuid.v1(),
                          version: QrVersions.auto,
                          size: 200.0,
                        ),
                        const Text(
                          'Anyone can scan this QR or send money to you on 9400366139. You will receive money in your default bank account (Federal Bank - 4587)',
                          textAlign: TextAlign.center,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                border: Border.all(color: Colors.blue),
                              ),
                              width: size.width / 4,
                              height: size.width / 14,
                              child: Center(
                                child: GestureDetector(
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Icon(
                                          Icons.share,
                                          size: 15,
                                          color: Colors.blue,
                                        ),
                                        Text(
                                          'Share  QR',
                                          style: buttonttext,
                                        ),
                                      ],
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.of(context).pushNamed('Home');
                                    print('object');
                                  },
                                ),
                              )),
                        ),
                        Container(
                          width: double.infinity,
                          height: 5,
                          color: Colors.blue,
                        ),
                        Container(
                          width: double.infinity,
                          height: 5,
                          color: const Color.fromARGB(255, 40, 1, 113),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 0.5,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                      width: size.width / 1.3,
                      height: 100,
                      child: Column(
                        children: [
                          const Text(' Muhammed salah v k'),
                          const Text('UPI ID: 9400366139@paytm copy'),
                          const Text('paytm'),
                          QrImage(
                            data: uuid.v1(),
                            version: QrVersions.auto,
                            size: 200.0,
                          ),
                          const Text(
                            'Anyone can scan this QR or send money to you on 9400366139. You will receive money in your default bank account (Federal Bank - 4587)',
                            textAlign: TextAlign.center,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                                  border: Border.all(color: Colors.blue),
                                ),
                                width: size.width / 4,
                                height: size.width / 14,
                                child: Center(
                                  child: GestureDetector(
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: const [
                                          Icon(
                                            Icons.share,
                                            size: 15,
                                            color: Colors.blue,
                                          ),
                                          Text(
                                            'Share  QR',
                                            style: buttonttext,
                                          ),
                                        ],
                                      ),
                                    ),
                                    onTap: () {
                                      Navigator.of(context).pushNamed('Home');
                                      print('object');
                                    },
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
              Positioned(
                  left: MediaQuery.of(context).size.width / 3.2,
                  top: size.width / 30,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'Profile');
                    },
                    child: const CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.red,
                      child: Text('data'),
                    ),
                  )),
            ],
          ))),
    );
  }
}
