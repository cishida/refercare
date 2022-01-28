import 'package:flutter/material.dart';
import 'package:refercare/core/_constants/_colors.dart';

class PayStubItem extends StatelessWidget {
  const PayStubItem({
    Key? key,
    required this.runDate,
    required this.payDate,
    this.isHeader = false,
  }) : super(key: key);

  final String runDate;
  final String payDate;
  final bool isHeader;

  @override
  Widget build(BuildContext context) {
    final BoxDecoration decoration = BoxDecoration(
      color: Colors.white,
      // border: Border.all(
      //   color: ConstColors.divider,
      // ),
      border: Border(
        top: BorderSide(
          color: isHeader ? ConstColors.divider : Colors.white,
        ),
        left: const BorderSide(
          color: ConstColors.divider,
        ),
        right: const BorderSide(
          color: ConstColors.divider,
        ),
        bottom: const BorderSide(
          color: ConstColors.divider,
        ),
      ),
      // borderRadius: const BorderRadius.only(
      //   topLeft: Radius.circular(10),
      //   topRight: Radius.circular(10),
      //   // bottomLeft: Radius.circular(10),
      //   // bottomRight: Radius.circular(10),
      // ),
      // boxShadow: [
      //   BoxShadow(
      //     color: Colors.grey.withOpacity(0.5),
      //     spreadRadius: 5,
      //     blurRadius: 7,
      //     offset: const Offset(
      //       0,
      //       2,
      //     ), // changes position of shadow
      //   ),
      // ],
    );

    return Container(
      width: double.infinity,
      decoration: decoration,
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 400.0,
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Text(
                    runDate,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: isHeader ? Colors.black : Colors.blueAccent,
                      fontWeight: isHeader ? FontWeight.w700 : FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Text(
                payDate,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: isHeader ? FontWeight.w700 : FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
