import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:uuid/uuid.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var uuid = const Uuid();
    return Container(
        height: size.height,
        width: size.width / 1.2,
        color: Colors.white,
        child: SafeArea(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            width: size.width / 1.3,
            height: size.width / 1.3,
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
              ],
            ),
          )
        ])));
  }
}
