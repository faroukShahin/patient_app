import 'package:doctor/hospitals/exploreHospitals.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Cards/categoryCard.dart';
import '../Cards/doctor_card.dart';
import '../main.dart';
import '../ourServices/search_bar.dart';

class services extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: SafeArea(
          bottom: false,
          child: SingleChildScrollView(
            child: ListView(
              shrinkWrap: true,
              children: [

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[

                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                        'احجز عند طبيبك \nالمفضل',
                        style: GoogleFonts.cairo(
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                          color: kTitleTextColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: SearchBar(),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                        'خدماتنا',
                        style: GoogleFonts.cairo(
                          fontWeight: FontWeight.bold,
                          color: kTitleTextColor,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    buildCategoryList(),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                        'الأطباء الأعلي تقييما',
                        style: GoogleFonts.cairo(
                          fontWeight: FontWeight.bold,
                          color: kTitleTextColor,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    buildDoctorList(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  buildCategoryList() {
    List<String> services=[
      ' المشافي \nالمجانية',
      ' الصيدليات \nالخيرية',
      'الصيدليات \nالمناوبة ',
      'مراكز الأطراف \nالصناعية'
    ];
    List<String> images=[
      'https://library.kissclipart.com/20180828/iow/kissclipart-hospital-emoji-clipart-emoji-hospital-health-care-42be25f0c97c1871.png',
      'https://cdn.freebiesupply.com/logos/large/2x/pharmacie-logo-png-transparent.png',
      'https://www.pngrepo.com/download/189223/drugs-drug.png',
      'https://lowcountryoandp.com/wp-content/uploads/2018/07/prosthetics-icon.png'
    ];
    return Container(
      height: 150,
      child: ListView.separated(
          shrinkWrap: true,

          scrollDirection: Axis.horizontal,
          physics: ScrollPhysics(),
          itemBuilder: (context, index){
            return InkWell(
              child: CategoryCard(
                services[index],
                images[index],
                kBlueColor,
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>exploreHospitals(service: services[index],)));
              },
            );
          },
          separatorBuilder: (context, index){
            return const SizedBox(width: 10,);
          }, itemCount: 4),
    );
  }

  buildDoctorList() {
    return Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: ListView.separated(
            itemCount: 1,
            shrinkWrap: true,
            physics: ScrollPhysics(),
            separatorBuilder: (context, index){
              return SizedBox(height: 20,);
            },
            itemBuilder: (context, index){
              return  DoctorCard(
                'Dr. Stella Kane',
                'Heart Surgeon - Flower Hospitals',
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRilYuvVE0ZlUe2hLC6mTtzpwavoZRWsuruyQ9nvzxg4aDLlRrne57RN7IjXNCUsYNSH-w&usqp=CAU',
                kBlueColor,
              );
            })
    );
  }
}
