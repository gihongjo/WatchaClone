import 'package:flutter/material.dart';

class NaviSearch extends StatefulWidget {
  const NaviSearch({super.key});

  @override
  _NaviSearch createState() => _NaviSearch();
}

class _NaviSearch extends State<NaviSearch> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('검색'),
    );
  }
}
