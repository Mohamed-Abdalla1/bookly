import 'package:booky_app/core/utils/styles.dart';
import 'package:booky_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
class BookAction extends StatelessWidget {
  const BookAction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomButton(
          textStyle: Styles.textSize22,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(18),
            bottomLeft: Radius.circular(18),
          ),
          backgroundColor: Colors.white,
          color: Colors.black,
          text: r'99 $',
        ),
        CustomButton(
            textStyle: Styles.textSize18,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(18),
              bottomRight: Radius.circular(18),
            ),
            backgroundColor: Color(0xffef8262),
            color: Colors.white,
            text: 'Free preview')
      ],
    );
  }
}
