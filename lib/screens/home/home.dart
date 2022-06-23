import 'package:draggable_home/draggable_home.dart';
import 'package:flutter/material.dart';
import 'package:paytm_advanced/screens/home/firstRow.dart';
import 'package:paytm_advanced/screens/home/secondRow.dart';
import 'package:paytm_advanced/screens/home/thirdRow.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: DraggableHome(
          body: [
            Column(
              children: const [FirstRow(), SecondRow(), ThirdRow()],
            ),
          ],
          headerWidget: Image.asset('assets/images/paytm-appbar.jpg'),
          title: const Text('data'),
        ),
      ),
    );
  }
}
