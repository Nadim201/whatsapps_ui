import 'package:flutter/material.dart';

class OwnMessage extends StatelessWidget {
  OwnMessage({super.key, required this.message, required this.time});

  String message;
  String time;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width,
        ),
        child: Card(
          margin: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
          color: const Color(0xffdcf8c6),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 10, right: 60, top: 5, bottom: 20),
                child: Text(
                  message,
                  style: const TextStyle(fontSize: 16),
                ),
              ),
              Positioned(
                bottom: 4,
                right: 10,
                child: Row(
                  children: [
                    Text(
                      time,
                      style:
                          const TextStyle(fontSize: 12, color: Colors.black45),
                    ),
                    const SizedBox(width: 5),
                    const Icon(
                      Icons.done_all,
                      size: 16,
                      color: Colors.blue,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
