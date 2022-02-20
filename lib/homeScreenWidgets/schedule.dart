import 'package:doctor/Cards/scheduleTime.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../main.dart';

class schedule extends StatefulWidget{
  @override
  State<schedule> createState() => _scheduleState();
}

class _scheduleState extends State<schedule> with TickerProviderStateMixin{
  late TabController _tabController= TabController( length: 3, vsync: this,);

  int _selectedTab = 2;

  var now = DateTime.now();


  @override
  void initState() {
    super.initState();
    _tabController.addListener((){
      if (!_tabController.indexIsChanging){
        setState(() {
          _selectedTab = _tabController.index;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: kBackgroundColor,
     body: SafeArea(

       child: Container(
         padding: const EdgeInsets.all(20),
         width: double.infinity,
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.end,
           children: [
             Text('جدول مواعيدك', style: GoogleFonts.almarai(fontWeight: FontWeight.bold, fontSize: 20),textAlign: TextAlign.right,),
             Container(
               margin: const EdgeInsets.symmetric(vertical: 20),
               decoration: BoxDecoration(
                 color: const Color(0xfff3efef),
                 borderRadius: BorderRadius.circular(10),
               ),
               child: TabBar(
                 unselectedLabelColor: Colors.blue,
                 labelColor: Colors.blue,
                 padding: EdgeInsets.zero,
                 indicatorPadding: EdgeInsets.zero,
                 labelPadding: EdgeInsets.zero,
                 indicatorColor: const Color(0xfff3efef),
                 controller: _tabController,
                 tabs: <Widget>[
                   _getTab(0, 'ملغاة'),
                   _getTab(1, 'مكتملة'),
                   _getTab(2, 'قادمة'),

                 ],
               ),
             ),
             Expanded(
               child: TabBarView(
                 controller: _tabController,
                 children: <Widget>[
                   ListView.builder(
                       itemBuilder: (context, index){
                         return scheduleTime();
                       }),

                   ListView.builder(
                       itemBuilder: (context, index){
                         return scheduleTime();
                       }),
                   ListView.builder(
                       itemBuilder: (context, index){
                         return scheduleTime();
                       })

                 ],
               ),
             ),
           ],
         ),
       ),
     ),
   );
  }

  _getTab(index, label){
    return Tab(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: index==_selectedTab?Colors.blue:null,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Center(child: Text(label, style: GoogleFonts.almarai(color: index==_selectedTab?Colors.white:Colors.black, fontWeight: index==_selectedTab?FontWeight.bold:null),)),
      ),
    );
  }
}