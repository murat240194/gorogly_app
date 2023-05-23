import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomBtn extends StatelessWidget {
  final Image btnIcon;
  final String btnText;
  final String newLocation;

  const BottomBtn({
    super.key,
    required this.btnIcon,
    required this.btnText,
    required this.newLocation,
  });

  void _onBtnPressed(ctx) {
    ctx.go(newLocation);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: ElevatedButton(
          onPressed: () {},
          child: Row(
            children: [
              SizedBox(width: 20, child: btnIcon),
              SizedBox(width: 8),
              Expanded(
                flex: 2,
                  child: Center(
                child: Text(btnText),
              )),
            ],
          ),
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(Colors.redAccent.shade700),
          ),
        ),
      ),
    );
  }
}
