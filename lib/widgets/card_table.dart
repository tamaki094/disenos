import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          _SingleCard(
              color: Colors.blue, icon: Icons.border_all, text: 'General'),
          _SingleCard(
              color: Colors.pinkAccent,
              icon: Icons.car_rental,
              text: 'Transport')
        ]),
        TableRow(children: [
          _SingleCard(
              color: Colors.greenAccent,
              icon: Icons.shopping_bag,
              text: 'Shoping'),
          _SingleCard(
              color: Colors.redAccent, icon: Icons.school, text: 'School')
        ]),
        TableRow(children: [
          _SingleCard(
              color: Colors.deepPurpleAccent,
              icon: Icons.movie,
              text: 'Movies'),
          _SingleCard(
              color: Colors.cyanAccent, icon: Icons.computer, text: 'Computer')
        ]),
        TableRow(children: [
          _SingleCard(
              color: Colors.deepPurpleAccent,
              icon: Icons.movie,
              text: 'Movies'),
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard(
      {Key? key, required this.icon, required this.color, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      height: 180,
      decoration: BoxDecoration(
          color: Color.fromRGBO(62, 66, 107, 0.7),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: this.color,
            child: Icon(this.icon),
            radius: 30,
          ),
          SizedBox(height: 10),
          Text(
            this.text,
            style: TextStyle(color: this.color, fontSize: 18),
          )
        ],
      ),
    );
  }
}
