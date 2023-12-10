import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MoonTitle extends StatelessWidget {
  final DateTime newDate;
  MoonTitle(this.newDate);

  final List months = [
    "",
    "Enero",
    "Febrero",
    "Marzo",
    "Abril",
    "Mayo",
    "Junio",
    "Julio",
    "Agosto",
    "Septiembre",
    "Octubre",
    "Noviembre",
    "Diciembre"
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
      width: 250,
      child: Stack(
        fit: StackFit.loose,
        alignment: AlignmentDirectional.center,
        children: <Widget>[
          Positioned(
            top: width > height ? 18 : 70,
            left: 0,
            child: Text(
              DateFormat('yyyy-MM-dd').format(newDate) ==
                      DateFormat('yyyy-MM-dd').format(DateTime.now())
                  ? "....//"
                  : newDate.year.toString(),
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20, color:Colors.red,height: 2),
            ),
          ),
          Positioned(
            top: width > height ? 28 : 80,
            left: 20,
            child: Text(
              DateFormat('yyyy-MM-dd').format(newDate) ==
                      DateFormat('yyyy-MM-dd').format(DateTime.now())
                  ? "Hoy..."
                  : "${months[newDate.month]} ${newDate.day.toString()}",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25, color:Colors.yellow,height: 3),
            ),
          ),
          Positioned(
            top: width > height ? 73 : 125,
            left: 60,
            child: Text(
              "Luna",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30, color:Colors.red,height: 2 ),
            ),
          ),
        ],
      ),
    );
  }
}
