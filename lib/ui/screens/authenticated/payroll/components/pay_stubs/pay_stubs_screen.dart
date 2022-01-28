import 'package:flutter/material.dart';
import 'package:refercare/core/_constants/_colors.dart';
import 'package:refercare/ui/screens/authenticated/payroll/components/pay_stubs/components/pay_stub_item.dart';

class PayStubsScreen extends StatelessWidget {
  const PayStubsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> _paystubs = [
      {
        'runDate': 'Pay run',
        'payDate': 'Pay date',
      },
      {
        'runDate': 'Dec 18 - Dec 31',
        'payDate': '01/3/2022',
      },
      {
        'runDate': 'Jan 1 - Jan 14',
        'payDate': '01/19/2022',
      },
      {
        'runDate': 'Jan 15 - Jan 28',
        'payDate': '01/31/2022',
      }
    ];

    return Padding(
      padding: const EdgeInsets.only(top: 50.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: 200.0,
            height: 40.0,
            margin: const EdgeInsets.only(bottom: 12.0),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: ConstColors.divider,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    '2022',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Icon(Icons.arrow_drop_down),
                ],
              ),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 4,
            itemBuilder: (BuildContext context, int index) {
              return PayStubItem(
                runDate: _paystubs[index]['runDate'].toString(),
                payDate: _paystubs[index]['payDate'].toString(),
                isHeader: index == 0,
              );
            },
          ),
        ],
      ),
    );
  }
}
