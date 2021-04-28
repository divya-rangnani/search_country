import 'package:flutter/material.dart';
import 'package:search_country/model/country_detail.dart';
import 'package:search_country/utils/CommonMethods.dart';

class CountryDetailPage extends StatelessWidget {
  final CountryDetail countryDetail;
  CountryDetailPage(this.countryDetail) : super();

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: SafeArea(
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           Padding(
             padding: const EdgeInsets.only(
                 top: 16.0, left: 16, right: 16),
             child: Text(
               'Country Info',
               style: TextStyle(
                 fontSize: 28,
                 color: Colors.black,
                 fontWeight: FontWeight.bold,
               ),
               textAlign: TextAlign.left,
             ),
           ),
           Card(
             elevation: 5,
             margin: EdgeInsets.all(8.0),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 countryTile(countryDetail),
                 Padding(
                   padding: const EdgeInsets.only(
                       left: 16.0, right: 16.0),
                   child: Divider(height: 16,),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(
                       left: 16.0, right: 16.0,bottom: 16.0),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text('Time Zones', style: TextStyle(
                           height: 2,
                           fontSize: 16,
                           fontWeight: FontWeight.bold,
                           color: Colors.black),),
                       Column(
                         children: countryDetail.timezones.map((title) => Text(title, style: TextStyle(height: 1.5,
                             fontSize: 16,
                             color: Colors.grey))).toList(),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(
                             left: 16.0, right: 16.0),
                         child: Divider(height: 16,),
                       ),
                       Text('Share border with', style: TextStyle(
                           height: 2,
                           fontSize: 16,
                           fontWeight: FontWeight.bold,
                           color: Colors.black),),
                       Column(
                         children: countryDetail.borders.map((title) => Text(title, style: TextStyle(
                             height: 1.5,
                             fontSize: 16,
                             color: Colors.grey))).toList(),
                       ),
                     ],
                   ),
                 )

               ],
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(16.0),
             child: OutlinedButton(
               child: Text('Back', style: TextStyle(fontSize: 20.0),),
               onPressed: () {Navigator.of(context).pop();},
             ),
           ),
         ],
       ),
     ),
   );
  }


}

