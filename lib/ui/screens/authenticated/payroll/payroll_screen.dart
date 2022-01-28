import 'package:flutter/material.dart';
import 'package:refercare/core/_constants/_colors.dart';
import 'package:refercare/ui/screens/authenticated/payroll/components/payroll_nav_row.dart';

class PayrollScreen extends StatefulWidget {
  const PayrollScreen({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  _PayrollScreenState createState() => _PayrollScreenState();
}

class _PayrollScreenState extends State<PayrollScreen> {
  @override
  Widget build(BuildContext context) {
    final BoxDecoration decoration = BoxDecoration(
      color: ConstColors.lightGreen,
      borderRadius: BorderRadius.circular(4.0),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 1,
          blurRadius: 2,
          offset: const Offset(
            0,
            2,
          ), // changes position of shadow
        ),
      ],
    );

    return Column(
      children: [
        SizedBox(
          width: 1000.0,
          height: 1000.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(
                  top: 100.0,
                  bottom: 30.0,
                ),
                child: Text(
                  'Payroll',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 32.0,
                  ),
                ),
              ),
              PayrollNavRow(),
              Expanded(child: widget.child)
            ],
          ),
        ),
      ],
    );
  }
}
