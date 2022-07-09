import 'package:draggable_home/draggable_home.dart';
import 'package:flutter/material.dart';
import 'package:paytm_advanced/screens/customDrawer.dart';
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
          drawer: const CustomDrawer(),
          alwaysShowLeadingAndAction: true,
          body: [
            Column(
              children: const [FirstRow(), SecondRow(), ThirdRow()],
            ),
          ],
          headerWidget: Image.asset('assets/images/paytm-appbar.jpg'),
          title: RichText(
              text: TextSpan(
                  text: 'Pay',
                  style: TextStyle(
                      color: const Color.fromARGB(255, 11, 19, 63),
                      fontSize: size.width / 13,
                      fontWeight: FontWeight.bold),
                  children: const [
                TextSpan(text: 'tm', style: TextStyle(color: Colors.blue))
              ])),
          appBarColor: Colors.blue.shade200,
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search,
                    color: Color.fromARGB(255, 11, 19, 63))),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.messenger_outline,
                  color: Color.fromARGB(255, 11, 19, 63),
                ))
          ],
        ),
      ),
    );
  }
}
