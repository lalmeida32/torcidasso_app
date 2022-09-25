import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:torcidasso_app/app_marker.dart';

class AppSpot extends StatefulWidget {
  final AppMarker jogoMarker;
  final String? type;

  const AppSpot({
    this.type,
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
        widget.type == null ? Container() : Container(
            padding: const EdgeInsets.only(top: 11, left: 25, right: 25),
            child: SfRadialGauge(
              axes: <RadialAxis>[
                RadialAxis(
                  minimum: 0,
                  maximum: 1,
                  startAngle: 180,
                  endAngle: 0,
                  showLabels: false,
                  showTicks: false,
                  axisLineStyle: const AxisLineStyle(
                      color: Color(0xFF437DE9),
                      thickness: 0.2,
                      cornerStyle: CornerStyle.bothFlat,
                      thicknessUnit: GaugeSizeUnit.factor),
                  pointers: <GaugePointer>[
                    RangePointer(
                      color: const Color(0xFF16C016),
                      value: widget.jogoMarker.getPercentage(),
                      cornerStyle: CornerStyle.bothFlat,
                      width: 0.2,
                      sizeUnit: GaugeSizeUnit.factor,
                    )
                  ],
                ),
              ],
            ),
        ),
        Container(
            margin: const EdgeInsets.only(top: 21),
            child: Image(
              image: const AssetImage('assets/soccer_marker.png'),
              color: widget.type == null ? Colors.red : null,
            ))
      ],
    );
  }
}
