
import 'package:flutter/material.dart';



class EmoticonFace extends StatelessWidget {
 EmoticonFace({super.key, required this.emoticonFace});
  final String  emoticonFace;
  @override
  Widget build(BuildContext context) {
    return Container( 
      decoration: BoxDecoration(
        color: Colors.blue[700],
        borderRadius: BorderRadius.circular(12)

      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(emoticonFace,style: TextStyle(fontSize: 28),),
      ),
    );
  }
}