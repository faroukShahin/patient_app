//ignore_for_file: file_names
import 'package:doctor/ourServices/bookAppointment.dart';
import 'package:doctor/ourServices/chatDoctor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class doctorProfile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return DefaultTabController(
     length: 2,
     initialIndex: 1,
     child:  Scaffold(
       appBar: AppBar(
         centerTitle: true,
         automaticallyImplyLeading: false,
         backgroundColor: const Color(0xfff5f5f5),
         iconTheme: const IconThemeData(color: Colors.black),
         title: Row(
           children: [
             Container(
               margin: const EdgeInsets.all(10),
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
             Expanded(child: Text('الملف الشخصي', style: GoogleFonts.almarai(color: Colors.black),textAlign: TextAlign.center,)),
             Container(
               margin: const EdgeInsets.all(10),
               // decoration: BoxDecoration(
               //   borderRadius: BorderRadius.circular(10),
               //   border: Border.all(color: Colors.black12, width: 2),
               // ),
               child: PopupMenuButton<String>(
                 onSelected: (selected){
                   if(selected=='الدردشة'){
                     Navigator.push(context,MaterialPageRoute(builder: (context)=>chatDoctor()));
                   }
                 },
                 itemBuilder: (BuildContext context) {
                   return {'تقييم الطبيب', 'الدردشة'}.map((String choice) {
                     return PopupMenuItem<String>(
                       value: choice,
                       child: Text(choice, textAlign: TextAlign.right,),
                     );
                   }).toList();
                 },
               ),
             ),

           ],
         ),
         elevation: 0,

       ),
       backgroundColor: const Color(0xfff5f5f5),
       body: Stack(
         children: [
           ListView(
             children: [
               Column(
                 children: [
                   Stack(
                     children: const [
                       CircleAvatar(
                         radius: 60,
                         backgroundImage: NetworkImage(
                             'https://telemedizin.one/wp-content/uploads/2019/12/doctor07.jpg'
                         ),
                       ),
                       Positioned(
                         bottom: 0,
                         right: 0,
                         child: CircleAvatar(
                           radius: 17,
                           backgroundColor: Colors.white,
                           child: CircleAvatar(
                             radius: 15,
                             backgroundColor: Colors.blue,
                             child: Text('4.5', style: TextStyle(color: Colors.white),),
                           ),
                         ),
                       )
                     ],
                   ),
                   Text('سارة أحمد', style: GoogleFonts.almarai(height: 2, fontSize: 19, fontWeight: FontWeight.bold),),
                   Text('طبيبة اسنان في مستشفي الغربية', style: TextStyle(height: 2),),
                   TabBar(
                     tabs: [
                       Tab(child: Text('معلومات', style: GoogleFonts.almarai(color: Colors.black),),),

                       Tab(child: Text('التقييمات', style: GoogleFonts.almarai(color: Colors.black),),),
                     ],),
                   SizedBox(
                     height: 600,
                     child: TabBarView(
                       children: [
                         const Center(child: Text('منتظر التصميم')),
                         ListView.builder(
                             itemCount: 10,
                             shrinkWrap: true,
                             physics: const ScrollPhysics(),
                             itemBuilder: (context, index){
                               return Container(
                                 padding: const EdgeInsets.all(15),
                                 margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 9),
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(15),
                                   color: Colors.white
                                 ),
                                 child: Row(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Expanded(
                                       child: Column(
                                         children: [
                                           Row(
                                             children: [
                                               RichText(
                                                 textAlign: TextAlign.right,
                                                 text: TextSpan(
                                                     children: [
                                                       TextSpan(text: '4.5', style: TextStyle(color: Colors.black)),
                                                       WidgetSpan(child: Icon(Icons.star, color: Colors.yellow,))
                                                     ]
                                                 ),),
                                               const SizedBox(width: 10,),
                                               Expanded(
                                                 child: Column(
                                                   crossAxisAlignment: CrossAxisAlignment.end,
                                                   children: [
                                                     Text('سارة احمد', textAlign: TextAlign.right,style: GoogleFonts.almarai(),),
                                                     Text('1 day'),
                                                   ],
                                                 ),
                                               ),
                                               const SizedBox(width: 10,),

                                             ],
                                           ),
                                           const SizedBox(height: 20,),
                                           Text(
                                             'الأطباء الأمريكيون[عدل]. الغالبية العظمى من الأطباء المدربين في الولايات المتحدة حاصلون على درجة دكتوراه في الطب، ويستخدمون الأحرف الأولى M.D. (دكتور في الطب).',
                                             textAlign: TextAlign.right,
                                             style: TextStyle(height: 1.5),
                                           )
                                         ],
                                       ),
                                     ),
                                     const SizedBox(width: 20,),
                                     CircleAvatar(
                                       radius: 30,

                                       backgroundImage: NetworkImage(
                                           'https://telemedizin.one/wp-content/uploads/2019/12/doctor07.jpg'
                                       ),
                                     ),
                                   ],
                                 ),
                               );
                             }
                         )
                       ],
                     ),
                   ),
                 ],
               ),


             ],
           ),
           Positioned(
             bottom: 20,
             left: 15,
             right: 15,
             height: 60,
             child: InkWell(
               child: Container(
               decoration:  BoxDecoration(
               borderRadius: BorderRadius.circular(10),
                   gradient: const LinearGradient(
                       colors: [
                         Color(0xff4bb3ca),
                         Color(0xff1fa0bd)
                       ]
                   )

               ),
                 child: Center(
                   child: Text('حجز موعد', style: GoogleFonts.notoKufiArabic(color: Colors.white, fontSize: 16),),
                 ),

           ),
               onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>bookAppointment()));
               },
             ),)
         ],
       ),
     ),
   );

  }

}