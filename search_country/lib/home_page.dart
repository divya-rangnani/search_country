import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:search_country/bloc/product/country_detail_bloc.dart';
import 'package:search_country/bloc/product/country_detail_event.dart';
import 'package:search_country/bloc/product/country_detail_state.dart';
import 'package:search_country/country_detail_page.dart';
import 'package:search_country/model/country_detail.dart';
import 'package:search_country/utils/CommonApiClass.dart';
import 'package:search_country/utils/CommonMethods.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  BuildContext _context;
  TextEditingController _searchController = new TextEditingController();
  List<CountryDetail> _countryDetailList = [];
  bool _isLoading = false;

  @override
  void initState() {
    /*_searchController.addListener(() {
      _searchTextChanged();
    });*/
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CountryDetailBloc>(
      create: (context) =>
      CountryDetailBloc(CountryDetailLoading())..add(LoadCountryDetail()),
      child: BlocBuilder<CountryDetailBloc, CountryDetailState>(
          builder: (BuildContext context, CountryDetailState state) {
            try {
              _context = context;
              if (state is SearchedCountryDetailLoaded) {
                _isLoading = false;
                if (state.searchedItem != null &&
                    !_countryDetailList.contains(state.searchedItem)) {
                  _countryDetailList.add(state.searchedItem);
                }
                _searchController.text = '';
              } else if (state is CountryDetailError) {
                _isLoading = false;
                CommonApiClass.showLToastMessage(message: 'Invalid request.');
              }
            } catch (e) {
              print(e);
            }
            return Scaffold(
                body: SafeArea(
                  child:
                  Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0, left: 16, right: 16),
                      child: Text(
                        widget.title,
                        style: TextStyle(
                          fontSize: 28,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * .8,
                          margin: EdgeInsets.all(16.0),
                          decoration: commonBorderLines(),
                          child: Padding(
                            padding:
                            const EdgeInsets.only(left: 8.0, top: 2, bottom: 2),
                            child: TextField(
                              maxLines: 1,
                              decoration: new InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                hintText: 'search here',
                              ),
                              textInputAction: TextInputAction.search,
                              onSubmitted: (value) {
                                _searchTextChanged();
                              },
                              //onChanged: _searchTextChanged(),
                              controller: _searchController,
                            ),
                          ),
                        ),
                        GestureDetector(
                          child: Icon(
                            Icons.navigate_next,
                            size: 32,
                          ),
                          onTap: () => _searchTextChanged(),
                        ),
                      ],
                    ),
                    _isLoading == false
                        ? Expanded(
                        child: _countryDetailList != null &&
                            _countryDetailList.length > 0
                            ? ListView.builder(
                          itemCount: _countryDetailList.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CountryDetailPage(
                                        _countryDetailList.elementAt(index))),
                              ),
                              child: Card(
                                elevation: 5,
                                margin: EdgeInsets.all(8.0),
                                child: countryTile(
                                    _countryDetailList.elementAt(index)),
                              ),
                            );
                          },
                        )
                            : Center(
                          child: Text('Searched list is empty'),
                        ))
                        : Expanded(
                        child: Center(
                          //child: Text('Loading data...'),
                          child: SpinKitHourGlass(
                            color: Colors.blue,
                            size: 50.0,
                            controller: AnimationController(
                                vsync: this,
                                duration: const Duration(milliseconds: 1000)),
                          ),
                        ))
                  ]),
                ));
          }),
    );
  }

  String _query;

  _searchTextChanged() {
    FocusScope.of(context).unfocus();

    if (!_isLoading && _searchController.text.isNotEmpty &&
        (_query == null || _searchController.text.toLowerCase() != _query)) {
      _isLoading = true;
      _query = _searchController.text.toLowerCase();
      BlocProvider.of<CountryDetailBloc>(_context)
          .add(LoadSearchCountryDetail(_context, _query));
    } else {
      CommonApiClass.showLToastMessage(message: 'Invalid request.');
    }
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}
