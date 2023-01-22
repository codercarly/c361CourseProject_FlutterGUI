import 'package:flutter/material.dart';
import 'package:c361_course_project_flutter_gui/constants.dart';

// ignore: must_be_immutable
class SelectButton extends StatelessWidget {
  SelectButton({super.key, required this.onPressed, required this.buttonTitle});

  void Function() onPressed;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: raisedButtonStyle,
      onPressed: onPressed,
      child: Text(
        buttonTitle,
        style: const TextStyle(
          color: kColorBlack,
          fontSize: k15PointFont,
        ),
      ),
    );
  }

  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    minimumSize: const Size(100, 36),
    padding: const EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(kBorderRadiusCircular)),
    ),
  );
}
