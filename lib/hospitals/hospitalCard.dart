//ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class hospitalCard extends StatelessWidget{
  String image, name, address, patients, rate;
  hospitalCard({
  required this.image,
    required this.address,
    required this.name,
    required this.patients,
    required this.rate
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          height: 150,
          color: Colors.white,
          child: Row(
            children: [
              Expanded(child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(address, style: GoogleFonts.notoKufiArabic(color: Colors.grey, fontWeight: FontWeight.w500),textAlign: TextAlign.right,),
                    Text(name, style: GoogleFonts.notoKufiArabic(color: Colors.black, fontWeight: FontWeight.w500),textAlign: TextAlign.right,),
                    Expanded(child: Container(),),
                    Row(
                      children: [
                        Text(patients),
                        const SizedBox(width: 5,),
                        const Icon(Icons.person_outline_rounded),
                        Expanded(child: Container()),
                        Text(rate),
                        const SizedBox(width: 5,),
                        const Icon(Icons.star_outlined)

                      ],
                    )
                  ],
                ),
              )),
              const SizedBox(width: 10,),
              SizedBox(
                height: 150,
                width: 90,
                child: Image(image: NetworkImage(
                  image,),
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}