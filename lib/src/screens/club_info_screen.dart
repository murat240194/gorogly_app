import 'dart:io';

import 'package:flutter/material.dart';

class ClubInfoScreen extends StatelessWidget {
  const ClubInfoScreen({super.key});

  static const routeName = '/schedule';

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Клуб №1: "ŞEWÇENKO"',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                width < 340
                    ? SizedBox(
                        height: 10,
                      )
                    : SizedBox(
                        height: 50,
                      ),
                DecoratedBox(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.redAccent.shade700,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 1, horizontal: 1),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.network(
                        'https://sm.mashable.com/t/mashable_in/photo/default/maps_dmpu.1248.jpg',
                        width: double.infinity,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                width < 340
                    ? SizedBox(
                        height: 10,
                      )
                    : SizedBox(
                        height: 50,
                      ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 20,
                      width: 20,
                      child: Image.asset(
                        'icons/location_icon.png',
                      ),
                    ),
                    Text(
                      'GÖROGLY KÖÇ., JAÝ 16',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                width < 340
                    ? SizedBox(
                        height: 10,
                      )
                    : SizedBox(
                        height: 50,
                      ),
              ],
            ),
          ),
          Expanded(
              child: DecoratedBox(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  ListTile(
                    leading: Image.asset(
                      'icons/clock_icon.png',
                      width: 30,
                    ),
                    title: Text(
                      'Режим Работы: ',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Text(
                      'Пн-Сб: 08:00-22:00, Вс: 09:00-22:00',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Image.asset(
                      'icons/telephone_icon.png',
                      width: 30,
                    ),
                    title: Text(
                      '+993(12) 27 13 07',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  width < 340
                      ? SizedBox(
                          height: 10,
                        )
                      : SizedBox(
                          height: 50,
                        ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'О  КЛУБЕ',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Divider(
                          color: Colors.white,
                        ),
                        Text(
                          'Зал в котором заполненность будет минимальная и в добавок бесплатный вай-фай и еда',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                  width < 340
                      ? SizedBox(
                          height: 10,
                        )
                      : SizedBox(
                          height: 50,
                        ),
                  Row(
                    children: [
                      Image.asset(
                        'icons/socials_instagram_icon.png',
                        width: 30,
                      ),
                      Text(
                        '@GOROGLYFITNESS',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
