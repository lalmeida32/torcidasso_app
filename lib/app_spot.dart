import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:torcidasso_app/app_marker.dart';

class AppSpot extends StatefulWidget {
  final AppMarker jogoMarker;

  const AppSpot({
    required this.jogoMarker,
    Key? key,
  }) : super(key: key);

  @override
  State<AppSpot> createState() => _AppSpotState();
}

class _AppSpotState extends State<AppSpot> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.passthrough,
      children: [
        Container(
            padding: const EdgeInsets.only(bottom: 3, left: 1, right: 1),
            child: SfRadialGauge(
              title: GaugeTitle(text: widget.jogoMarker.getText()),
              axes: <RadialAxis>[
                RadialAxis(
                  minimum: 0,
                  maximum: 1,
                  startAngle: 160,
                  endAngle: 20,
                  showLabels: false,
                  showTicks: false,
                  axisLineStyle: AxisLineStyle(
                      color: const Color(0xFF437DE9),
                      thickness: 0.4,
                      cornerStyle: CornerStyle.bothFlat,
                      thicknessUnit: GaugeSizeUnit.factor),
                  pointers: <GaugePointer>[
                    RangePointer(
                      color: const Color(0xFF16C016),
                      value: widget.jogoMarker.getPercentage(),
                      cornerStyle: CornerStyle.bothFlat,
                      width: 0.4,
                      sizeUnit: GaugeSizeUnit.factor,
                    )
                  ],
                ),
                RadialAxis(
                  minimum: 0,
                  interval: 1,
                  maximum: 10,
                  showLabels: false,
                  showTicks: true,
                  showAxisLine: false,
                  tickOffset: -0.3,
                  offsetUnit: GaugeSizeUnit.factor,
                  minorTicksPerInterval: 0,
                  startAngle: 160,
                  endAngle: 20,
                  radiusFactor: 0.7,
                  majorTickStyle: MajorTickStyle(
                      length: 0.3,
                      thickness: 2,
                      lengthUnit: GaugeSizeUnit.factor,
                      color: const Color.fromARGB(80, 0, 0, 0)),
                )
              ],
            )),
        Container(
            margin: const EdgeInsets.only(top: 32),
            child: const Image(
              image: NetworkImage(
                  "http://simpleicon.com/wp-content/uploads/map-marker-1.png",
                  scale: 1),
              color: Color.fromARGB(255, 255, 0, 0),
            ))
      ],
    );
  }
}
