import 'package:flutter/material.dart';
import 'package:paytm_advanced/components/assets_manager.dart';
import 'package:paytm_advanced/components/color_manager.dart';
import 'package:paytm_advanced/components/style_manager.dart';

class SecondRow extends StatelessWidget {
  const SecondRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
      child: Container(
        width: double.infinity,
        height: size.height * 0.14,
        decoration: BoxDecoration(
          // color: const Color(0xFFEEEEEE),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(width: 0.5, color: ColorManager.borderColor),
        ),
        child: Column(mainAxisSize: MainAxisSize.max, children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(
                    size.width * 0.04, size.width * 0.02, 5, 5),
                child: Text(
                  'UPI Money Transfer',
                  style: getBoldtStyle(
                      color: ColorManager.background, fontSize: 14),
                ),
              ),
              Image.asset(
                ImageAssets.upilogo,
                width: 12,
                height: 15,
                fit: BoxFit.cover,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(
                size.width * 0.08, 0, size.width * 0.08, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
                  child: Container(
                    decoration: const BoxDecoration(
                        // color: Color(0xFFEEEEEE),
                        ),
                    child: Column(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
                          child: Container(
                            width: 40,
                            height: 40,
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              'assets/images/scan and pay.PNG',
                            ),
                          ),
                        ),
                        Text(
                          'Scan & Pay',
                          maxLines: 1,
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    fontFamily: 'Poppins',
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
                  child: Container(
                    decoration: const BoxDecoration(
                        // color: Color(0xFFEEEEEE),
                        ),
                    child: Column(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
                          child: Container(
                            width: 40,
                            height: 40,
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              'assets/images/to mobile 2.PNG',
                            ),
                          ),
                        ),
                        Text(
                          'To Mobile',
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    fontFamily: 'Poppins',
                                    fontSize: 10,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
                  child: Container(
                    decoration: const BoxDecoration(
                        // color: Color(0xFFEEEEEE),
                        ),
                    child: Column(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
                          child: Container(
                            width: 40,
                            height: 40,
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              'assets/images/self.PNG',
                            ),
                          ),
                        ),
                        Text(
                          'To Self',
                          maxLines: 1,
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    fontFamily: 'Poppins',
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
                  child: Container(
                    decoration: const BoxDecoration(
                        // color: Color(0xFFEEEEEE),
                        ),
                    child: Column(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
                          child: Container(
                            width: 40,
                            height: 40,
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              'assets/images/to bank.PNG',
                            ),
                          ),
                        ),
                        Text(
                          'To Bank A/c',
                          maxLines: 1,
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    fontFamily: 'Poppins',
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
