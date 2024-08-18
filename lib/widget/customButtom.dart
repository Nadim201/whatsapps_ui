import 'package:flutter/material.dart';
import 'package:whatsapps_ui/pages/CreateGroup.dart';

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String title;

  const CustomButton({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (builder) => CreateGroup(
              name: title,
            ),
          ),
        );
      },
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.greenAccent,
          radius: 20,
          child: Icon(
            icon,
            color: Colors.white,
            size: 25,
          ),
        ),
        title: Text(title),
      ),
    );
  }
}
