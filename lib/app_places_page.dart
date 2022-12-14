import 'package:flutter/material.dart';
import 'package:torcidasso_app/app_place.dart';

class AppPlacesPage extends StatelessWidget {
  final void Function(bool) setOpen;

  const AppPlacesPage(this.setOpen, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 150,
          width: MediaQuery.of(context).size.width * 0.9,
          child: Stack(
            children: [
              Positioned(
                top: 15,
                right: 0,
                child: Icon(
                  Icons.circle,
                  size: 40,
                  color: Color(0xFF679436),
                ),
              ),
              Positioned(
                  top: 0,
                  right: 0,
                  child: Text(
                    'Agora',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      color: Color(0xFF679436),
                    ),
                  )),
              IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () => setOpen(false),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 100,
                      child: Image.network(
                        'https://images.vexels.com/media/users/3/152348/isolated/preview/e292f8cec7eae5f8f4f25bcc36cfe5f5-logo-da-sele-o-brasileira-de-futebol.png',
                      ),
                    ),
                    Text(
                      'X',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    Container(
                      height: 100,
                      child: Image.network(
                        'https://images.vexels.com/media/users/3/152348/isolated/preview/e292f8cec7eae5f8f4f25bcc36cfe5f5-logo-da-sele-o-brasileira-de-futebol.png',
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 10,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: Center(
                    child: Text('FIFA World Cup'),
                  ),
                ),
              ),
            ],
          ),
        ),
        const AppPlace(),
        const SizedBox(height: 20),
        const AppPlace(),
        const SizedBox(height: 20),
        const AppPlace(),
      ],
    );
  }
}
