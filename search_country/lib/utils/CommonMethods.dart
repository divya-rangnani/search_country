import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:search_country/model/country_detail.dart';

BoxDecoration commonBorderLines() {
  return BoxDecoration(
    color: Color.fromRGBO(232, 239, 245, 1.0),
    border: Border.all(width: 2, color: Color.fromRGBO(232, 239, 245, 1.0)),
    borderRadius: BorderRadius.all(Radius.circular(10)),
  );
}

Widget countryTile(CountryDetail countryDetail){
  return Padding(
    padding: EdgeInsets.all(8.0),
    child: Column(
      children: [
        ListTile(
          title: Text(
              countryDetail
                  .name,style: TextStyle(
            fontSize: 22,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),),
          subtitle: Text(
              'Capital: ${countryDetail.capital}'),
          leading: SvgPicture.network(
            countryDetail.flag, width: 45, height: 45,),
        ),
        Padding(
          padding: const EdgeInsets.only(
              left: 16.0, right: 16.0),
          child: Divider(height: 16,),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment
              .spaceAround,
          children: [
            RichText(
                text: TextSpan(
                    text: 'Language\n',
                    style: TextStyle(
                        height: 1.5,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    children: <TextSpan>[
                      TextSpan(
                        text: '${countryDetail.languages
                            .first
                            .name}',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight
                                .bold,
                            color: Colors.grey),
                      )
                    ])),
            RichText(
                text: TextSpan(
                    text: 'Currency\n',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    children: <TextSpan>[
                      TextSpan(
                        text: '${countryDetail.currencies
                            .first
                            .name}',
                        style: TextStyle(
                            height: 1.5,
                            fontSize: 16,
                            fontWeight: FontWeight
                                .bold,
                            color: Colors.grey),
                      )
                    ]))
          ],
        )
      ],
    ),
  );
}
