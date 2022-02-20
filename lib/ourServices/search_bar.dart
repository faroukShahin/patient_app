import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../main.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width * 0.8,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          decoration: BoxDecoration(
            color: kSearchBackgroundColor,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  style: GoogleFonts.cairo(fontSize: 14),
                  decoration: InputDecoration(
                    hintText: 'ابحث عن طبيب',
                    hintStyle: GoogleFonts.cairo(fontSize: 14),
                  ),
                ),
              ),
              const SizedBox(width: 10,),
              CircleAvatar(
                backgroundColor: kOrangeColor,
                child: IconButton(
                  onPressed: (){},
                  icon: const Icon(Icons.search, color: Colors.white,),
                ),
              )
            ],
          ),
        ),

      ],
    );
  }
}
