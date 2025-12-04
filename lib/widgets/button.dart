import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../themes/theme.dart';

class MyButton extends StatelessWidget {
  final String label;
  final Function()? onTab;
  const MyButton({Key? key,required this.label, required this.onTab}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(//komut alan widget gibi düşün
      onTap: onTab,
      child: Container(//boyama, pozisyonlandırma, şekillendirme
        width: 100,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.deepPurple
        ),
        child: Text(
          label,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
