import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes/style/app_style.dart';

Widget noteCard(Function()? onTap, QueryDocumentSnapshot doc){

  int colorId = int.parse(doc['color_id']);

  return InkWell(
    onTap: onTap,
    child: Container(
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.only(bottom: 8.0),
      decoration: BoxDecoration(
        color: AppStyle.cardsColor[colorId],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            doc['note_title'],
            style: AppStyle.mainTitle,
          ),

          const SizedBox(height: 4.0),
          Text(
            doc['creation_date'],
            style: AppStyle.dateTitle,
          ),
          const SizedBox(height: 8.0),
          Text(
            doc['note_content'],
            style: AppStyle.mainContent,
            overflow: TextOverflow.ellipsis,
          ),

        ],
      ),
    ),
  );
}