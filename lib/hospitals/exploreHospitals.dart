//ignore_for_file: file_names
import 'package:doctor/hospitals/hospitalCard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../main.dart';

class exploreHospitals extends StatefulWidget{
  String service;
  exploreHospitals({required this.service});
  @override
  State<exploreHospitals> createState() => _exploreHospitalsState();
}

class _exploreHospitalsState extends State<exploreHospitals> {
  int _index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: true,
        title: Text('إكتشف', style: GoogleFonts.cairo(color: Colors.black, fontSize: 16),textAlign: TextAlign.right,),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: ListView(
        children: [
          Container(
            height: 60,
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white
            ),
            child: TextField(
              textAlign: TextAlign.right,
              textAlignVertical: TextAlignVertical.bottom,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                        color:  Color(0xfff5f5f5)
                    )
                ),
                hintText: 'البحث ',
                suffixIcon: const Icon(Icons.search, color: Colors.grey,),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                        color:  Color(0xfff5f5f5)
                    )
                ),
              ),
            ),
          ),
          Container(
            height: 45,
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index){
                    return InkWell(
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                        decoration: BoxDecoration(
                          color: _index==index? Colors.blue:Colors.white,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Text('ميتشيغين', style: GoogleFonts.notoKufiArabic(fontSize: 12, color: _index==index?Colors.white:Colors.black),),
                        ),
                      ),
                      onTap: (){
                        setState(() {
                          _index=index;
                        });
                      },
                    );
                  }),
            ),
          ),
          ListView.builder(
              itemCount: 10,
              shrinkWrap: true,
              itemBuilder: (context, index){
            return hospitalCard(
              address: 'ميتشيغين',
              name: 'مستشفي الأطفال في ميتشيغين',
              patients: '12,56',
              rate:'4.5',
              image:
            'https://media-exp1.licdn.com/dms/image/C4E1BAQE1aqlU5h9fOw/company-background_10000/0/1571253189717?e=2159024400&v=beta&t=RG0E2UNNk3frfOmSCda8xCtOwV1PuhERD9o8Ci3rfZk'
                ,
            );
          })
        ],
      ),
    );
  }
}