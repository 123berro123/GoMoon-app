import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:newapp/widgets/custom_dropdown_button.dart';

class HomePage extends StatelessWidget {
  late double _deviceheight, _devicewidth;
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    _deviceheight = MediaQuery.of(context).size.height;
    _devicewidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: Container(
              height: _deviceheight,
              width: _devicewidth,
              padding: EdgeInsets.symmetric(horizontal: _devicewidth * 0.05),
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [_pagetitle(), _bookRideWidget()],
                  ),
                  Align(
                    alignment:Alignment.centerRight ,
                    child: _astroImageWidget()),
                ],

              ))),
    );
  }

  Widget _pagetitle() {
    return const Text(
      "#GoMoon",
      style: TextStyle(
          color: Colors.white, fontSize: 70, fontWeight: FontWeight.w800),
    );
  }

  Widget _astroImageWidget() {
    return Container(
      height: _deviceheight * 0.50,
      width: _devicewidth * 0.65,
      decoration: const BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("assets/images/astro_moon.png")),
      ),
    );
  }

  Widget _bookRideWidget() {
    return Container(
      height: _deviceheight * 0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _destinationdropdown(),
          _travellersInformationWidget(),
          _ridebutton()
        ],
      ),
    );
  }

  Widget _destinationdropdown() {
    return Customdropdownbuttonclass(values: const [
      'james station',
      'leen station',
    ], width: _devicewidth);
  }

  Widget _travellersInformationWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Customdropdownbuttonclass(
          values: const ['1', '2', '3', '4'],
          width: _devicewidth * 0.45,
        ),
        Customdropdownbuttonclass(
          values: const ['Economy', 'business', 'first', 'private'],
          width: _devicewidth * 0.40,
        ),
      ],
    );
  }

  Widget _ridebutton() {
    return Container(
      padding: EdgeInsets.only(bottom: _deviceheight * 0.01),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      width: _devicewidth,
      child: MaterialButton(
        onPressed: () {},
        child: Text(
          "BOOK RIDE !",
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
