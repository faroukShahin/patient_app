import 'package:doctor/ourServices/doctorProfile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class doctors extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        iconTheme: const IconThemeData(color: Colors.black),
        title:  Row(
          children: [
            Container(
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(10),
              //   border: Border.all(color: Colors.black12, width: 2),
              // ),
              child: IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back, color: Colors.black54,)),
            ),
            Expanded(child: Text('الطبيب', style: GoogleFonts.notoKufiArabic(color: Colors.black),textAlign: TextAlign.center,)),
            IconButton(onPressed: (){
              showModalBottomSheet<void>(
                context: context,

                builder: (BuildContext context) {
                  return Container(
                    height: 500,
                    decoration:  BoxDecoration(
                      color: Colors.white,
                      borderRadius: new BorderRadius.only(
                          topLeft: const Radius.circular(70.0),
                          topRight: const Radius.circular(70.0)),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text('اختيار حسب التخصص', style: GoogleFonts.almarai(fontSize: 20, fontWeight: FontWeight.bold, height: 6),),
                          Expanded(child: Container()),
                          SizedBox(
                            height: 100,
                            child: Row(
                              children: [

                                Expanded(child: Column(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        padding: const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            border: Border.all(color: Colors.black12, width: 1)
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(15),
                                          child: Image(image: NetworkImage(
                                              'https://cdn-icons-png.flaticon.com/512/2492/2492923.png'
                                          ), fit: BoxFit.cover,),
                                        ),
                                      ),
                                    ),
                                    Text('صدر', style: GoogleFonts.almarai(height: 2),)
                                  ],
                                )),
                                Expanded(child: Column(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        padding: const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            border: Border.all(color: Colors.black12, width: 1)
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(15),
                                          child: Image(image: NetworkImage(
                                              'https://cdn-icons.flaticon.com/png/512/2864/premium/2864309.png?token=exp=1642012676~hmac=b129025cd672bb9f5455945dfa304bf9'
                                          ), fit: BoxFit.cover,),
                                        ),
                                      ),
                                    ),
                                    Text('اعصاب', style: GoogleFonts.almarai(height: 2),)
                                  ],
                                )),
                                Expanded(child: Column(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        padding: const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            border: Border.all(color: Colors.black12, width: 1)
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(15),
                                          child: Image(image: NetworkImage(
                                              'https://cdn-icons-png.flaticon.com/512/993/993307.png'
                                          ), fit: BoxFit.cover,),
                                        ),
                                      ),
                                    ),
                                    Text('أسنان', style: GoogleFonts.almarai(height: 2),)
                                  ],
                                )),
                                Expanded(child: Column(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        padding: const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            border: Border.all(color: Colors.black12, width: 1)
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(15),
                                          child: Image(image: NetworkImage(
                                              'https://cdn-icons.flaticon.com/png/512/508/premium/508786.png?token=exp=1642012048~hmac=b6e19cd9f45bb0b1beffac6a7cffaade'
                                          ), fit: BoxFit.cover,),
                                        ),
                                      ),
                                    ),
                                    Text('القلب', style: GoogleFonts.almarai(height: 2),)
                                  ],
                                )),

                              ],
                            ),
                          ),
                          Expanded(child: Container()),
                          SizedBox(
                            height: 100,
                            child: Row(
                              children: [

                                Expanded(child: Column(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        padding: const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            border: Border.all(color: Colors.black12, width: 1)
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(15),
                                          child: Image(image: NetworkImage(
                                              'https://cdn-icons-png.flaticon.com/512/2025/2025503.png'
                                          ), fit: BoxFit.cover,),
                                        ),
                                      ),
                                    ),
                                    Text('جلدية', style: GoogleFonts.almarai(height: 2),)
                                  ],
                                )),
                                Expanded(child: Column(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        padding: const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            border: Border.all(color: Colors.black12, width: 1)
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(15),
                                          child: Image(image: NetworkImage(
                                              'https://cdn-icons-png.flaticon.com/512/2867/2867436.png'
                                          ), fit: BoxFit.cover,),
                                        ),
                                      ),
                                    ),
                                    Text('المسالك البولية', style: GoogleFonts.almarai(height: 2),)
                                  ],
                                )),
                                Expanded(child: Column(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        padding: const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            border: Border.all(color: Colors.black12, width: 1)
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(15),
                                          child: Image(image: NetworkImage(
                                              'https://cdn-icons.flaticon.com/png/512/2176/premium/2176980.png?token=exp=1642012922~hmac=f96cf010b31f1679293ebcba475f62dc'
                                          ), fit: BoxFit.cover,),
                                        ),
                                      ),
                                    ),
                                    Text('نفسي', style: GoogleFonts.almarai(height: 2),)
                                  ],
                                )),
                                Expanded(child: Column(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        padding: const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            border: Border.all(color: Colors.black12, width: 1)
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(15),
                                          child: Image(image: NetworkImage(
                                              'https://cdn-icons-png.flaticon.com/512/415/415733.png'
                                          ), fit: BoxFit.cover,),
                                        ),
                                      ),
                                    ),
                                    Text('تغذية', style: GoogleFonts.almarai(height: 2),)
                                  ],
                                )),

                              ],
                            ),
                          ),
                          Expanded(child: Container()),

                        ],
                      ),
                    ),
                  );
                },
              );
            }, icon: Icon(FontAwesomeIcons.slidersH, color: Colors.black54,))

          ],
        ),
        centerTitle: true,

      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
        child: ListView(
          children: [
            SizedBox(
              height: 150,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 100,
                    padding: const EdgeInsets.symmetric(horizontal: 10, ),
                    decoration: BoxDecoration(
                        color: Colors.lightBlueAccent.withOpacity(.3),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('الاستشارات الحالية', style: GoogleFonts.almarai(height: 2, fontSize: 16),textAlign: TextAlign.right,),
                      ],
                    ),
                  ),
                  const SizedBox(width: 5,),
                  ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      shrinkWrap: true,
                      itemBuilder: (context, index){
                    return InkWell(
                      child: Container(
                          width: 110,
                          height: 150,
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          padding: const EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.black12)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Column(
                              children: [
                                const Expanded(child: SizedBox(
                                    width:double.infinity,
                                    child: Image(image: NetworkImage('https://aawafi.com/uploads/partners/profile/doctor.jpg'), fit: BoxFit.cover,))),
                               const SizedBox(height: 10,),
                                Text('د/ خالد المرشدي', style: GoogleFonts.almarai(fontWeight: FontWeight.w600, ),textAlign: TextAlign.center,),
                                Text('طبيب اسنان', style: GoogleFonts.almarai(height: 1.6),),
                              ],
                            ),
                          )),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>doctorProfile()));
                      },
                    );
                  }),

                ],
              ),
            ),
            const SizedBox(height: 20,),
            Row(
              children: [
                Text('عرض المزيد', style: GoogleFonts.almarai(color: Colors.blueAccent),),
                Expanded(child: Container()),
                Text('بالقرب منك', style: GoogleFonts.almarai(fontWeight: FontWeight.bold),textAlign: TextAlign.right,)
              ],
            ),
            const SizedBox(height: 20,),
            ListView.builder(
                itemCount: 10,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemBuilder: (context, index){
                  return InkWell(
                    child: Container(
                      height: 125,
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.symmetric(vertical: 10),

                      child: Row(
                        children: [

                          Expanded(
                              flex:3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text('د/ احمد سمير', style: GoogleFonts.almarai(fontWeight: FontWeight.bold,fontSize: 16, height: 2),textAlign: TextAlign.right,),
                                  Text(' تخصص أنف واذن وحنجرة', style: GoogleFonts.almarai(fontSize: 12, height: 2),textAlign: TextAlign.right,),
                                  SizedBox(height: 7,),
                                  RichText(
                                      textAlign: TextAlign.right,
                                      text: TextSpan(
                                    children: [
                                      TextSpan(text: ' (14 تقييم)', style: GoogleFonts.almarai(color: Colors.blueAccent)),
                                      TextSpan(text: ' 4.5 ', style: GoogleFonts.almarai(color: Colors.black)),

                                      WidgetSpan(child: Icon(Icons.star, color: Colors.yellow,size: 18,))
                                    ]
                                  )),
                                  Text(' مفتوح', style: GoogleFonts.almarai(fontSize: 12, height: 2, color: Colors.green),textAlign: TextAlign.right,),

                                ],
                              )),
                          const SizedBox(width: 10,),
                          Expanded(child: SizedBox(
                            height: double.infinity,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image(image: NetworkImage('https://aawafi.com/uploads/partners/profile/doctor.jpg'), fit: BoxFit.cover,)),
                          )),

                        ],
                      ),
                    ),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>doctorProfile()));
                    },
                  );
                })
          ],
        ),
      ),
    );
  }

}