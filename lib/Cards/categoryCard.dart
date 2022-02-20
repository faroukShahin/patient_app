import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../main.dart';

class CategoryCard extends StatelessWidget {
  var _title;
  var _imageUrl;
  var _bgColor;

  CategoryCard(this._title, this._imageUrl, this._bgColor);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 160,
      child: Stack(
        children: <Widget>[
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              width: 110,
              height: 137,
              padding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 16,
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  _title,
                  style: GoogleFonts.cairo(
                    color: kTitleTextColor,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            child: Container(
              height: 70,
              width: 70,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: _bgColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.network(
                _imageUrl,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
