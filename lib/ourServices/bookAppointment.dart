//ignore_for_file: file_names
import 'package:calendar_agenda/calendar_agenda.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class bookAppointment extends StatelessWidget{
  String cover=
      'https://media.istockphoto.com/vectors/medical-team-wearing-face-masks-vector-id1214206519?k=20&m=1214206519&s=612x612&w=0&h=OeaaHjGJwC1zte09RXo1A8Z9Uxz1d6k06i4RR-fUb7w='
  ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: Container(

          child: IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back, color: Colors.black54,)),
        ),
        title: Text('حجز الميعاد', style: GoogleFonts.almarai(color: Colors.black),),

      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
        child: ListView(
          children: [
            Container(
              height: 200,
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(image: NetworkImage(
                  cover
                ),
                fit: BoxFit.cover,
                ),
              ),
            ),
            CalendarAgenda(
              calendarBackground: Colors.white60,
              dateColor: Colors.black,
              backgroundColor: Colors.white,
              initialDate: DateTime.now(),
              firstDate: DateTime.now(),
              lastDate: DateTime.now().add(Duration(days: 6)),
              onDateSelected: (date) {
                print(date);
              },
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black12, width: 2),
              ),
              child: Row(
                children: [
                  const Text('14:00  - 14:30', style: TextStyle(fontSize: 17),),
                  Expanded(child: Text('الميعاد', style: GoogleFonts.almarai(fontWeight: FontWeight.bold, fontSize: 17),textAlign: TextAlign.right,))
                ],
              ),
            ),
            Container(
              height: 200,
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: TextField(
                textAlign: TextAlign.end,
                maxLines: 100,
                decoration: InputDecoration(
                  hintText: '.....اكتب شكواك',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.black12
                    )
                  )
                ),
              ),
            ),
            Text('محجوز: ٥٠/١٤', style: GoogleFonts.almarai(),),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
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
                child: Text('إحجز موعدك', style: GoogleFonts.almarai(color: Colors.white, fontWeight: FontWeight.bold),),
              )
            )
          ],
        ),
      ),
    );
  }


}