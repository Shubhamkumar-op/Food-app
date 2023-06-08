import 'package:flutter/material.dart';
import 'package:go_moon/Custom_widgets/custom_dropdownwidgets.dart';

class HomePage extends StatelessWidget {
  late double _deviceHeight, _deviceWidth;
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: _deviceHeight,
          width: _deviceWidth,
          padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.05),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _pageTitle(),
                  _OrderFood(),
                ],
              ),
              // _astroWidget(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _astroWidget() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/food2.jpg"),
        ),
      ),
    );
  }

  Widget _pageTitle() {
    return const Text("#Order Your Meal",
        style: TextStyle(
            color: Colors.white, fontSize: 70, fontWeight: FontWeight.w800));
  }

  Widget _itemsDropdown() {
    return customDropdownbutton(
        values: const ['Veg Meal', 'Non Veg Meal', 'Drinks', 'Fast Food packs'],
        width: _deviceWidth);
  }

  Widget _OrderFood() {
    return Container(
        height: _deviceHeight * 0.25,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [_itemsDropdown(), _itemsInformationWidget(), _Orderfood()],
        ));
  }

  Widget _itemsInformationWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        customDropdownbutton(
            values: const ['1', '2', '3', '4'], width: _deviceWidth * 0.45),
        customDropdownbutton(
            values: const ['100', '200', '30', '40'],
            width: _deviceWidth * 0.40),
      ],
    );
  }

  Widget _Orderfood() {
    return Container(
      margin: EdgeInsets.only(bottom: _deviceWidth * 0.01),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      width: _deviceWidth,
      child: MaterialButton(
        onPressed: () {},
        child: Text(
          "Order Food",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
