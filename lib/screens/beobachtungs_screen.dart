import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BeobachtungsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
              child: Column(
            children: [
              Container(
                height: 50,
                color: Colors.blue,
                child: Placeholder(),
              ),
              _buildKategorienView(),
              Container(
                height: 200,
                child: Placeholder(),
              ),
              Container(
                height: 200,
                child: Placeholder(),
              ),
              Container(
                height: 80,
                child: Placeholder(),
              )
            ],
          )),
        ),
      ),
    );
  }

  Widget _buildKategorienView() {
    return Container(
      height: 200,
      color: Colors.green[100],
      child: Stack(
        children: [
          Positioned(
            top: 10,
            left: 30,
            child: _circularKategorienImage(
                80, "assets/images/kategorien/biber.jpg"),
          ),
          Positioned(
            top: 15,
            right: 20,
            child: _circularKategorienImage(
                80, "assets/images/kategorien/biene.jpg"),
          ),
          Positioned(
            top: 80,
            left: 200,
            child: _circularKategorienImage(
                80, "assets/images/kategorien/forelle.jpg"),
          ),
          Positioned(
            top: 100,
            left: 100,
            child: _circularKategorienImage(
                80, "assets/images/kategorien/reh.jpg"),
          ),

          /*
           */

          Positioned(
            top: 10,
            left: 140,
            child: _circularKategorienImage(
                80, "assets/images/kategorien/rotmilan.jpg"),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: _circularKategorienImage(
                80, "assets/images/kategorien/schlingnatter.jpg"),
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: _circularKategorienImage(
                80, "assets/images/kategorien/seefrosch.jpg"),
          ),
        ],
      ),
    );
  }

  Container _circularKategorienImage(double size, String asset) {
    return Container(
      height: size,
      width: size,
      //color: Colors.green,
      decoration: BoxDecoration(
        //color: Colors.pink,
        image: DecorationImage(
          image: AssetImage(asset),
          fit: BoxFit.cover,
        ),
        border: Border.all(
          color: Colors.white,
          width: 4,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(size / 2),
        ),
      ),
    );
  }
}
