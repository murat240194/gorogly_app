import 'package:flutter/material.dart';


class CurrentWorkload extends StatelessWidget {
  const CurrentWorkload({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.redAccent.shade700,
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: Row(children: [
          width < 340
              ? SizedBox(
                  width: 25,
                  child: Opacity(
                    opacity: 0.8,
                    child: Image.asset(
                      'icons/cardiogram.png',
                    ),
                  ),
                )
              : SizedBox(
                height: 60,
                  child: Opacity(
                    opacity: 0.8,
                    child: Image.asset(
                      'icons/cardiogram.png',
                    ),
                  ),
                ),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '32',
                style:
                    TextStyle(color: Theme.of(context).colorScheme.onPrimary),
              ),
              Text(
                'Текущая загруженность',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ))
        ]),
      ),
    );
  }
}
