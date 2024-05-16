import 'package:flutter/material.dart';
import 'package:testptc/core/utils/consts.dart';

class Button extends StatelessWidget {
  const Button(
      {super.key,
      required this.title,
      required this.onTap,
      this.isLoading = false});
  final String title;
  final void Function() onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: Consts.kPraimaryColor,
          foregroundColor: Colors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(14),
            ),
          ),
        ),
        child: SizedBox(
          height: 60,
          width: double.infinity,
          child: Center(
            child: isLoading
                ? const CircularProgressIndicator(color: Colors.white)
                : Text(title,
                    textAlign: TextAlign.center,
                    style: Styles.textStyle16W400.copyWith(fontSize: 18)),
          ),
        ));
  }
}
