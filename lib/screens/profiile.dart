import 'package:flutter/material.dart';
import 'package:paytm_advanced/components/color_manager.dart';
import 'package:paytm_advanced/components/style_manager.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  TextEditingController? textController1;
  TextEditingController? textController2;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // textController1 = TextEditingController();
    // textController2 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Align(
            alignment: const AlignmentDirectional(0, 0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
              child: Stack(
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 30, 0, 30),
                        child: GestureDetector(
                          onTap: () {
                            //
                            showModalBottomSheet(
                                context: context,
                                builder: (BuildContext bc) {
                                  return Container(
                                    child: new Wrap(
                                      children: <Widget>[
                                        new ListTile(
                                            leading: new Icon(Icons.music_note),
                                            title: new Text('Music'),
                                            onTap: () => {}),
                                        new ListTile(
                                          leading: new Icon(Icons.videocam),
                                          title: new Text('Video'),
                                          onTap: () => {},
                                        ),
                                      ],
                                    ),
                                  );
                                });
                          },
                          child: Container(
                            width: 120,
                            height: 120,
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.network(
                              'https://picsum.photos/seed/49/600',
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Name',
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      fontFamily: 'Poppins',
                                      color: const Color(0xFF37393D),
                                      fontSize: 12,
                                    ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Muhammed salah vk',
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ],
                      ),
                      const Divider(
                        thickness: 0.07,
                        color: Color(0xFF4C4A4A),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Email Address',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    fontFamily: 'Poppins',
                                    fontSize: 12,
                                  ),
                            ),
                            Text(
                              'Add',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    fontFamily: 'Poppins',
                                    color: const Color(0xFF25A6E7),
                                    fontSize: 12,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: TextFormField(
                                controller: textController1,
                                onChanged: (_) {}
                                // EasyDebounce.debounce(
                                //   'textController1',
                                //   const Duration(milliseconds: 2000),
                                //   () => setState(() {}),
                                // ),
                                ,
                                autofocus: false,
                                obscureText: false,
                                decoration: const InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                ),
                                style: const TextStyle()),
                          ),
                        ],
                      ),
                      const Divider(
                        color: Color(0xFF332D2D),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Phone No.',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    fontFamily: 'Poppins',
                                    fontSize: 12,
                                  ),
                            ),
                            Text(
                              'Update',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    fontFamily: 'Poppins',
                                    color: const Color(0xFF25A6E7),
                                    fontSize: 12,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: TextFormField(
                              controller: textController2,
                              onChanged: (_) => {}
                              // EasyDebounce.debounce(
                              //   'textController2',
                              //   const Duration(milliseconds: 2000),
                              //   () => setState(() {}),
                              // ),
                              ,
                              readOnly: true,
                              autofocus: true,
                              obscureText: false,
                              decoration: const InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                              ),
                              style: const TextStyle(),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Paytm Wallet Status',
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      fontFamily: 'Poppins',
                                      color: const Color(0xFF37393D),
                                      fontSize: 12,
                                    ),
                          ),
                          Text(
                            'Activate Now',
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      fontFamily: 'Poppins',
                                      color: const Color(0xFF25A6E7),
                                      fontSize: 12,
                                    ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Positioned(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color.fromARGB(255, 7, 12, 92),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                          child: Text(
                            "A photo helps your contacts know that they're paying you",
                            style:
                                getRegularStyle(color: ColorManager.whiteText),
                          ),
                        ),
                      ),
                    ),
                    width: size.width * 0.6,
                    height: size.height * 0.05,
                    top: size.height * 0.01,
                    left: size.width * 0.15,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
