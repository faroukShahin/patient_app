import 'package:doctor/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Cards/scheduleTime.dart';

class profile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: SafeArea(
       child: Padding(
         padding: const EdgeInsets.all(15.0),
         child: Directionality(
           textDirection: TextDirection.rtl,
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               const SizedBox(height: 50,),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 30,),
                 child: Text(
                   'حسابك',
                   style: GoogleFonts.cairo(
                     fontWeight: FontWeight.bold,
                     fontSize: 32,
                     color: kTitleTextColor,
                   ),
                 ),
               ),
               const SizedBox(height: 20,),
               SizedBox(
                 width: double.infinity,
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     CircleAvatar(
                       radius: 47,
                       backgroundColor: kBlueColor,
                       child: CircleAvatar(
                         radius: 45,
                         backgroundColor: Colors.white,
                         backgroundImage: NetworkImage(
                             'https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg'
                         ),
                       ),
                     ),
                     const SizedBox(height: 20,),
                     Text('فاروق محمد شاهين', style: GoogleFonts.cairo(fontWeight: FontWeight.bold),),
                     SizedBox(height: 5,),
                     Text('faroukshahin30@gmail.com'),
                   ],
                 ),
               ),
               const SizedBox(height: 25,),
               Container(
                 margin: const EdgeInsets.symmetric(vertical: 10),
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10),
                   color: kBlueColor.withOpacity(0.1),
                 ),
                 child: ListTile(
                   trailing: const Icon(Icons.arrow_forward_ios_sharp, color: Colors.black,size: 12,),
                   title: Text('من نحن ؟', style: GoogleFonts.cairo(color: Colors.black),),
                   leading:  Icon(Icons.info_outline_rounded, color: kBlueColor,),
                   onTap: (){},
                 ),
               ),
               Container(
                 margin: const EdgeInsets.symmetric(vertical: 10),
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10),
                   color: kBlueColor.withOpacity(0.1),
                 ),
                 child: ListTile(
                   trailing: const Icon(Icons.arrow_forward_ios_sharp, color: Colors.black,size: 12,),
                   title: Text('قيمنا', style: GoogleFonts.cairo(color: Colors.black),),
                   leading:  Icon(Icons.star_outline, color: kBlueColor,),
                   onTap: (){},
                 ),
               ),
               Container(
                 margin: const EdgeInsets.symmetric(vertical: 10),
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10),
                   color: kBlueColor.withOpacity(0.1),
                 ),
                 child: ListTile(
                   trailing: const Icon(Icons.arrow_forward_ios_sharp, color: Colors.black,size: 12,),
                   title: Text('خدماتنا', style: GoogleFonts.cairo(color: Colors.black),),
                   leading:  Icon(Icons.category_outlined, color: kBlueColor,),
                   onTap: (){},
                 ),
               )
             ],
           ),
         ),
       ),
     ),
   );
  }

}