import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  String TH, TYPE, money;

  double wh = 0, total =0;
  WelcomePage(
    {Key? key,
    required this.TH,
    required this.TYPE,
    required this.money,
    })
    :super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('หน้าสรุป'),
      ),
      body: Center(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text('จำนวนเงินไทย : '),
                    subtitle: Text(' $TH'),
                  )),
                Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child:
                  ListTile(
                    title: Text('สรุป : '),
                    subtitle: Text('แปลงเป็นเงินได้' +" "+
                              numberAdd(double.parse(TH),double.parse(TYPE))
                              .toString()+ ' '+'$money'

                    ),
                  )),
              ],
            ),
          ),
        ),
      ),
    );
  }
  double numberAdd(double w, double h) {
    if(h == 1) {
      total = w * 0.030;
      
    }
    else if(h ==2) {
      total = w * 3.49;
      
    }
    else{
      total = w * 0.030;
      
    }
    return total;
  }
}