import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;
  final bool isInverted;
  final _blackColor = const Color(0xFF1F2123);

  const CurrencyCard(
      {Key? key,
      required this.name,
      required this.code,
      required this.amount,
      required this.icon,
      required this.isInverted})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: isInverted ? _blackColor : Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  code,
                  style: TextStyle(
                      color: isInverted ? Colors.white : _blackColor,
                      fontSize: 32,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      amount,
                      style: TextStyle(
                        color: isInverted ? Colors.white : _blackColor,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      name,
                      style: TextStyle(
                        color: isInverted ? Colors.white : _blackColor,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Transform.scale(
              scale: 2,
              child: Transform.translate(
                offset: Offset(8, 5),
                child: Icon(
                  icon,
                  color: isInverted ? Colors.white : _blackColor,
                  size: 80,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
