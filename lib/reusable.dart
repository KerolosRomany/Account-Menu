import 'package:flutter/material.dart';

Widget defaultButton({required Icon icon1, required Icon icon2,required String text}) {
  return Padding(
  padding: const EdgeInsets.all(5.0),
  child: Container(
    margin: EdgeInsets.only(left: 30,right: 30),
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.white10,
    ),
    child: MaterialButton(
      onPressed: (){  },
      child: Row(
        children: [
         icon1,
          SizedBox(
            width: 12,
          ),
          Text(
            text,
            style: TextStyle(
              color: Colors.white70,
              fontSize: 16,
            ),
          ),
          Spacer(),
          icon2,
        ],
      ),
    ),
  ),
);
}
