//ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class scheduleTime extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const[
          BoxShadow(
            color: Colors.black12,
            blurRadius: 2,
            spreadRadius: 1
          )
        ]
      ),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 27,
                backgroundImage:
                NetworkImage(
                    'https://clinicalnotebook.com/wp-content/uploads/2015/04/Doctor-Profile-Pic-Example.png'
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('د. فاروق محمد شاهين',
                      style: GoogleFonts.almarai(fontWeight: FontWeight.bold, fontSize: 16),
                      textAlign: TextAlign.right,),
                    Text('طبيب أسنان',
                      style: GoogleFonts.almarai(fontWeight: FontWeight.bold,color: Colors.black45 ,height: 2.5,fontSize: 12),
                      textAlign: TextAlign.right,),
                  ],
                ),
              )
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            width: double.infinity,
            height: .5,
            decoration: const BoxDecoration(
              color: Colors.black45
            ),
          ),
          Row(
            children: [
              Expanded(child: Text('تم التأكيد', textAlign: TextAlign.right,),),
              SizedBox(width: 10,),
              CircleAvatar(
                radius: 5,
                backgroundColor: Colors.green,
              ),
              Expanded(child: Text('10:30 AM', textAlign: TextAlign.right,),),
              SizedBox(width: 10,),
              Icon(FontAwesomeIcons.clock, color: Colors.black45,),

              Expanded(child: Text('12/10/2022', textAlign: TextAlign.right,),),
              SizedBox(width: 10,),
              Icon(FontAwesomeIcons.calendarAlt, color: Colors.black45,)

            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 15),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 45,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      color:  Color(0xe9e7fcf7),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(child: Text('إلغاء', style: TextStyle(fontSize: 16),)),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 45,
                    margin: const EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(child: Text('ميعاد أخر', style: TextStyle(fontSize: 16, color: Colors.white),)),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

}