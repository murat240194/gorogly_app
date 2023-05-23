import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/bottom_btns.dart';
import '../widgets/choose_club_btn.dart';
import '../widgets/current_workload.dart';
import '../widgets/image_slider.dart';
import '../widgets/training_info_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const routeName = '/home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];
  int current = 0;

  void carouselImageChanged(index, reason) {
    setState(() => {current = index});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: MediaQuery.of(context).size.height - 180,
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Column(
                children: [
                  ChooseClubButton(),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    width: double.infinity,
                    height: 260,
                    // padding:
                    //     const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Column(children: [
                      ImageCarousel(
                        imgList: imgList,
                        imageChanged: carouselImageChanged,
                      ),
                      DotsIndicator(
                        dotsCount: imgList.length,
                        position: current,
                      )
                    ]),
                  ),
                  CurrentWorkload(),

                  // Ближайшие тренировки
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.fromLTRB(30, 30, 20, 10),
                    child: Text(
                      'Ближайшие тренировки: ',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  TrainingInfoCard(),
                  TrainingInfoCard(),
                  TrainingInfoCard(),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                          child: BottomBtn(
                        btnIcon: Image.asset('icons/instructors_icon.png'),
                        btnText: 'Инструкторы',
                        newLocation: '/instructors',
                      )),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: BottomBtn(
                          btnIcon: Image.asset('icons/location_icon.png'),
                          btnText: 'О клубе',
                          newLocation: '/aboutClub',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  BottomBtn(
                    btnIcon: Image.asset('icons/register_icon.png'),
                    btnText: 'Вход',
                    newLocation: '/logIn',
                  ),
                  SizedBox(
                    height: 100,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
