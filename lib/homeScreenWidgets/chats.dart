import 'package:doctor/ourServices/chatDoctor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../main.dart';

class chats extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text('الدردشات', style: GoogleFonts.almarai(color: Colors.black),),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: ListView(
          children: [
            Container(
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xfff5f5f5)
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
                  hintText: 'البحث في المحادثات',
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
            const SizedBox(height: 20,),
            ListView.builder(
              shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index){
                  return InkWell(
                    child: Container(
                      margin: const EdgeInsets.symmetric( vertical: 10),
                      child: Row(
                        children: [
                          Column(
                            children: const [
                            Text('15 min'),
                               SizedBox(
                                height: 5,
                              ),
                            CircleAvatar(
                              backgroundColor: Color(0xF4AA0000),
                              radius: 4,
                            )
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children:  [
                                Text('سارة أحمد', style: GoogleFonts.almarai(color: Colors.black, fontWeight: FontWeight.bold),textAlign: TextAlign.right,),
                                Text('اهلا وسهلا', style: GoogleFonts.almarai(color: Colors.black, height: 1.5, fontSize: 13),textAlign: TextAlign.right,)
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Stack(
                            children: const [
                              CircleAvatar(
                                radius: 25,
                                backgroundColor: Colors.blue,
                                backgroundImage: NetworkImage(
                                    'https://perfectczechwomen.com/wp-content/uploads/2019/04/New-Profile-15-500x580.jpg'
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                  left: 0,
                                  child: CircleAvatar(
                                    radius: 8,
                                    backgroundColor: Colors.white,
                                    child: CircleAvatar(
                                  backgroundColor: Colors.green,
                                  radius: 6,
                                ),
                              ))
                            ],
                          ),
                        ],
                      ),
                    ),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>chatDoctor()));
                    },
                  );
                }
            ),
          ],
        ),
      ),
    );
  }

}