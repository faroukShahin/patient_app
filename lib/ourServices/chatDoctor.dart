//ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_media_recorder/audio_encoder_type.dart';
import 'package:social_media_recorder/screen/social_media_recorder.dart';

class chatDoctor extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Container(
          margin: const EdgeInsets.only(left: 10),
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
        centerTitle: true,
        title: Text('Dr. Stelle Kane', style: GoogleFonts.cairo(color: Colors.black),),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.circular(10),
            //   border: Border.all(color: Colors.black12, width: 2),
            // ),
            child: IconButton(
                onPressed: (){
                },
                icon: const Icon(Icons.share, color: Colors.black54,)),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            Expanded(child: ListView(
              shrinkWrap: true,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black12, width: 2),
                  ),
                  child: Column(
                    children: [
                      Text('بدأت الإستشارة', style: GoogleFonts.almarai(color: Color(0xff1fa0bd), fontWeight: FontWeight.bold),),
                      Text(
                        'يمكنك الآن استشارة الطبيب فيما تعاني',
                        style: GoogleFonts.almarai(color: Colors.black45,height: 2, fontWeight: FontWeight.bold),),

                    ],
                  ),
                ),
                ListView.builder(
                  itemCount: 10,
                    shrinkWrap: true,
                    itemBuilder: (context, index){
                      return Column(
                        children: [
                        Row(
                          children: [
                            Stack(
                              children: const [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage: NetworkImage(
                                      'https://telemedizin.one/wp-content/uploads/2019/12/doctor07.jpg'
                                  ),
                                ),
                                Positioned(
                                    bottom: 0,
                                    right: 0,
                                    child: CircleAvatar(
                                  radius: 10,
                                  backgroundColor: Colors.white,
                                  child: CircleAvatar(
                                    radius: 5,
                                    backgroundColor: Colors.green,
                                  ),
                                ))
                              ],
                            ),
                            Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                              Container(
                                width: double.infinity,
                                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                                margin: const EdgeInsets.only(right: 70),
                                decoration: const BoxDecoration(
                                  color: Color(0xfff5f6fa),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                    topRight: Radius.circular(10)
                                  )
                                ),
                                child: Text('أهلا, إزاي اقدر اساعدك؟', textAlign: TextAlign.right,),
                              ),
                                  Text('منذ ٥ دقائق', style: GoogleFonts.almarai(height: 2, fontSize: 10, color: Colors.black45),)
                            ],))
                          ],
                        ),
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                            margin: const EdgeInsets.only(left: 70, top: 10, bottom: 10),
                            decoration: const BoxDecoration(
                              color: Color(0xff1fa0bd),
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                topLeft: Radius.circular(10)
                              )
                            ),
                            child: Text(
                                '​شكاوى حول العلاج الطبي المقدم من قبل موظفي نظام الرعاية الصحية (سوء الممارسة الطبية)، انتهاك قانون حقوق المريض، وأخلاقيات المهنة',
                              textAlign: TextAlign.right,
                              style: TextStyle(color: Colors.white, height: 1.5),
                            ),
                          )
                        ],
                      );
                    }),
              ],
            ),),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xfff5f6fa)
                    ),
                    child: TextField(
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        hintText: ' ..... أكتب هنا',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Color(0xfff5f6fa)
                          )
                        ),
                        suffixIcon: IconButton(
                            onPressed: (){},
                            icon: const Icon(Icons.attach_file, color: Color(0xff22a0b9),)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                                color: Color(0xfff5f6fa)
                            )
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                                color: Color(0xfff5f6fa)
                            )
                        ),

                      ),
                    ),

                  ),
                ),
                const SizedBox(width: 10,),
                const CircleAvatar(
                  radius: 28,
                  backgroundColor: Color(0xfff5f6fa),
                  child: Icon(Icons.mic, color: Color(0xff22a0b9),)
                ),
              ],
            ),

            const SizedBox(height: 30,),
          ],
        ),
      ),

    );
  }

}