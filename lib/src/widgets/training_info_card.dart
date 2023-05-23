
import 'package:flutter/material.dart';

class TrainingInfoCard extends StatelessWidget {
  const TrainingInfoCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      // margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      elevation: 4,
      surfaceTintColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              left: BorderSide(
                width: 8,
                color: Colors.blueAccent.shade700,
              ),
            ),
          ),
          padding:
              const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Day
                  Text(
                    'Сегодня',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  // Time
                  Text('14:15 - 16:45'),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 35,
                        width: 35,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: NetworkImage(
                              'https://upload.wikimedia.org/wikipedia/commons/f/f3/Zinedine_Zidane_by_Tasnim_03.jpg',
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text('Дурды Гоков')
                    ],
                  ),
                ],
              ),
              Text(
                'Пилатес',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
