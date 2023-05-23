import 'package:flutter/material.dart';

class ChooseClubButton extends StatelessWidget {
  const ChooseClubButton({
    super.key,
  });

  _chooseClubModalOpen(ctx) {
    showModalBottomSheet(
      context: ctx,
      clipBehavior: Clip.hardEdge,
      backgroundColor: Colors.redAccent.shade700,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(ctx).size.width - 40,
      ),
      builder: (BuildContext context) {
        return Container(
          // decoration: BoxDecoration(
          //   color: Colors.redAccent.shade700,
          //   borderRadius: BorderRadius.circular(50),
          // ),
          width: double.infinity,
          margin: EdgeInsets.all(10),
          height: 300,
          child: ListView(
            padding: const EdgeInsets.all(8),
            children: <Widget>[
              Container(
                height: 50,
                child: const Center(child: Text('Клуб №1')),
              ),
              Divider(),
              Container(
                height: 50,
                child: const Center(child: Text('Клуб №2')),
              ),
              Divider(),
              Container(
                height: 50,
                child: const Center(child: Text('Клуб №3')),
              ),
              Divider(),
              Container(
                height: 50,
                child: const Center(child: Text('Клуб №4')),
              ),
              Divider(),
              Container(
                height: 50,
                child: const Center(child: Text('Клуб №5')),
              ),
              Divider(),
              Container(
                height: 50,
                child: const Center(child: Text('Клуб №6')),
              ),
              Divider(),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: SizedBox(
          width: 250,
          height: 40,
          child: FloatingActionButton(
            backgroundColor: Colors.redAccent.shade700,
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 2,
            onPressed: () => _chooseClubModalOpen(context),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Клуб №1: "Disnay Land"',
                  style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 20,
                  child: Image.asset('icons/bar_stagged.png'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}