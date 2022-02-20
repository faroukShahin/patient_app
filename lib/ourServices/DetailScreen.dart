import 'package:doctor/ourServices/bookAppointment.dart';
import 'package:doctor/ourServices/chatDoctor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Cards/scheduleCard.dart';
import '../main.dart';

class DetailScreen extends StatelessWidget {
  var _name;
  var _description;
  var _imageUrl;

  DetailScreen(
      this._name,
      this._description,
      this._imageUrl);
  String cover=
  'https://media.istockphoto.com/vectors/medical-team-wearing-face-masks-vector-id1214206519?k=20&m=1214206519&s=612x612&w=0&h=OeaaHjGJwC1zte09RXo1A8Z9Uxz1d6k06i4RR-fUb7w='
  ;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Container(
          width: double.infinity,
          child: SizedBox(
            height: double.infinity,
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  height: MediaQuery.of(context).size.height * 0.40,
                  child: Image( image: NetworkImage(cover),
                    alignment: Alignment.topCenter,
                    fit: BoxFit.cover,),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,right: 0,
                  top: MediaQuery.of(context).size.height * 0.35,
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: kBackgroundColor,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(50),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(30),
                      child: ListView(
                        shrinkWrap: true,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Image(
                                      image: NetworkImage(_imageUrl),
                                      height: 120,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          _name,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            color: kTitleTextColor,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          _description,
                                          style: TextStyle(
                                            color: kTitleTextColor.withOpacity(0.7),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Container(
                                              padding: const EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                color: kBlueColor.withOpacity(0.1),
                                                borderRadius: BorderRadius.circular(10),
                                              ),
                                              child: InkWell(
                                                  child: const Icon(Icons.call),
                                                onTap: (){

                                                },
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 16,
                                            ),
                                            Container(
                                              padding: const EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                color: kYellowColor.withOpacity(0.1),
                                                borderRadius: BorderRadius.circular(10),
                                              ),
                                              child: InkWell(
                                                child: const Icon(Icons.chat),
                                                onTap: (){
                                                  Navigator.push(context,
                                                  MaterialPageRoute(builder: (context)=>chatDoctor()));
                                                },
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 16,
                                            ),
                                            Container(
                                              padding: const EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                color: kOrangeColor.withOpacity(0.1),
                                                borderRadius: BorderRadius.circular(10),
                                              ),
                                              child: InkWell(
                                                child: const Icon(Icons.add),
                                                onTap: (){
                                                  Navigator.push(context,
                                                  MaterialPageRoute(builder: (context)=>bookAppointment()));
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              Text(
                                'عن الطبيب',
                                style: GoogleFonts.cairo(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: kTitleTextColor,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Dr. Stella is the top most heart surgeon in Flower\nHospital. She has done over 100 successful sugeries\nwithin past 3 years. She has achieved several\nawards for her wonderful contribution in her own\nfield. She’s available for private consultation for\ngiven schedules.',
                                style: TextStyle(
                                  height: 1.6,
                                  color: kTitleTextColor.withOpacity(0.7),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                height: 220,
                                child: ListView.builder(
                                    itemCount: 10,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    physics: const ScrollPhysics(),
                                    itemBuilder: (context, index){
                                      return Container(
                                        width: 250,
                                        padding: const EdgeInsets.all(15),
                                        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 9),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(15),
                                            color: Colors.white,
                                          boxShadow:  [
                                            BoxShadow(
                                              color: Colors.black12.withOpacity(.05),
                                              spreadRadius: 1,
                                              blurRadius: 1,
                                              offset: const Offset(1,-1)
                                            )
                                          ]
                                        ),
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      CircleAvatar(
                                                        radius: 25,

                                                        backgroundImage: NetworkImage(
                                                            'https://images.complex.com/complex/images/c_scale,f_auto,q_auto,w_1920/fl_lossy,pg_1/ok26lkxxcptihvwljzaw/girl-in-red?fimg-ssr-default'
                                                        ),
                                                      ),
                                                      const SizedBox(width: 10,),
                                                      Expanded(
                                                        child: Column(
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: [
                                                            Text('سارة احمد', textAlign: TextAlign.right,style: GoogleFonts.almarai(),),
                                                            Text('1 day ago '),
                                                          ],
                                                        ),
                                                      ),
                                                      const SizedBox(width: 10,),
                                                      RichText(
                                                        textAlign: TextAlign.right,
                                                        text: TextSpan(
                                                            children: [
                                                              TextSpan(text: '4.5', style: TextStyle(color: Colors.black)),
                                                              WidgetSpan(child: Icon(Icons.star, color: Colors.yellow,))
                                                            ]
                                                        ),),

                                                    ],
                                                  ),
                                                  const SizedBox(height: 20,),
                                                  Text(
                                                    'الأطباء الأمريكيون[عدل]. الغالبية العظمى من الأطباء المدربين في الولايات المتحدة حاصلون على درجة دكتوراه',
                                                    textAlign: TextAlign.right,
                                                    style: GoogleFonts.cairo(height: 1.5,),
                                                  )
                                                ],
                                              ),
                                            ),
                                            const SizedBox(width: 20,),

                                          ],
                                        ),
                                      );
                                    }
                                ),
                              ),
                              Text(
                                'الموقع',
                                style: GoogleFonts.cairo(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: kTitleTextColor,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [

                                  CircleAvatar(
                                    radius: 25,
                                    backgroundColor: kBlueColor.withOpacity(.2),
                                    child: Icon(Icons.location_on_sharp, color: kBlueColor,),
                                  ),
                                  const SizedBox(width: 20,),
                                  Expanded(child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('منطقة سوريا الرئيسية',style: GoogleFonts.cairo(fontWeight: FontWeight.bold),),
                                      Text('منطقة سوريا الفرعية',style: GoogleFonts.cairo(height: 1.5),),
                                    ],
                                  )),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                'مواعيد قادمة',
                                style: GoogleFonts.cairo(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: kTitleTextColor,
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              ScheduleCard(
                                'استشارات',
                                'Sunday . 9am - 11am',
                                '12',
                                'Jan',
                                kBlueColor,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              ScheduleCard(
                                'استشارات',
                                'Sunday . 9am - 11am',
                                '13',
                                'Jan',
                                kYellowColor,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              ScheduleCard(
                                'استشارات',
                                'Sunday . 9am - 11am',
                                '14',
                                'Jan',
                                kOrangeColor,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                Positioned(
                  top: 30,
                  left: 20,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_forward, color: Colors.black,)
                    ),
                  )
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
