import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final Icon icon;
  final String text;

  const CustomListTile({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        text,
        style: TextStyle(color: Colors.black, fontSize: 16),
      ),
      onTap: () {},
      trailing: icon,
    );
  }
}
