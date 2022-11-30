import 'package:flutter/material.dart';
import 'package:ui_tnbts/pages/success.dart';

class PaymentMethode extends StatefulWidget {
  const PaymentMethode({super.key});

  @override
  State<PaymentMethode> createState() => _PaymentMethodeState();
}

class _PaymentMethodeState extends State<PaymentMethode> {
  int value = 0;
  final paymentLabels = [
    'Credit card / Debit Card',
    'Cash on delivery',
    'Paypal',
    'Google wallet'
  ];
  final paymentIcons = [
    Icons.credit_card,
    Icons.money_off,
    Icons.payment,
    Icons.account_balance_wallet,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Payments',
          style: TextStyle(color: Color(0xFF25BAC2)),
        ),
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(Icons.arrow_back_ios, color: Color(0xFF25BAC2)),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFFFFFFFF),
        elevation: 0.0,
        automaticallyImplyLeading: false,
        iconTheme: IconThemeData(color: Color(0xFF25BAC2)),
      ),
      body: Column(
        children: [
          HeaderLabel(),
          Expanded(
            child: ListView.separated(
                itemCount: paymentLabels.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Radio(
                      activeColor: Color(0xFF25BAC2),
                      value: index,
                      groupValue: value,
                      onChanged: (i) => setState(() => value = i!),
                    ),
                    title: Text(
                      paymentLabels[index],
                      style: TextStyle(color: Color(0xFF303030)),
                    ),
                    trailing: Icon(
                      paymentIcons[index],
                      color: Color(0xFF25BAC2),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider();
                }),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(vertical: 24.0),
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: StadiumBorder(),
                primary: Color(0xFF25BAC2),
              ),

              // padding: EdgeInsets.symmetric(vertical: 10.0),
              // shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(30.0)),
              // color: Color(0xFF25BAC2),
              // textColor: Color(0xFFFFFFFF),
              // highlightColor: Colors.transparent,
              onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Success())),
              child: Text('Pay'),
            ),
          ),
        ],
      ),
    );
  }
}

class HeaderLabel extends StatelessWidget {
  const HeaderLabel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Text(
        'Choose your payments method',
        style: TextStyle(color: Color(0xFF808080), fontSize: 26),
      ),
    );
  }
}
