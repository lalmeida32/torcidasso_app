import 'package:flutter/material.dart';

class AppPlace extends StatelessWidget {
  const AppPlace({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xA0b5d2dd),
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      width: double.infinity,
      height: 300,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 2 - 30,
                height: 100,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: const Text(
                  'ICMC - Instituto de Ciências Matemáticas e de Computação',
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF05668d),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(15),
                width: MediaQuery.of(context).size.width / 2 - 30,
                height: 140,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 1),
                    borderRadius: BorderRadius.circular(2.0),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(4.0),
                    child: Image.network(
                        fit: BoxFit.cover,
                        'https://lh5.googleusercontent.com/p/AF1QipPoEoQDENxcLhn9odaXlHXNgL8bBFW8pXH_Mm0u=w650-h486-k-no'),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25),
            width: double.infinity,
            color: Color(0xFF719bba),
            height: 50,
            child: Stack(
              children: [
                Positioned(
                  top: 2,
                  left: 3,
                  child: Text(
                    'Torcida do Brasil',
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 2,
                  left: 80,
                  child: Container(
                    width: 40,
                    child: Center(
                      child: Text(
                        '32',
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 2,
                  right: 80,
                  child: Container(
                    width: 40,
                    child: Center(
                      child: Text(
                        '2',
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 2,
                  right: 3,
                  child: Text(
                    'Torcida do Qatar',
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: double.infinity,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 10,
                  color: Color(0xFFb5d2dd),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  width: MediaQuery.of(context).size.width * 0.9 * 0.6,
                  height: 10,
                  color: Color(0xFF05668d),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  width: 120,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  child: Text(
                    'INDO TORCER PRO BRASIL',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF05668d),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  width: 120,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  child: Text(
                    'INDO TORCER PRO QATAR',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF05668d),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
