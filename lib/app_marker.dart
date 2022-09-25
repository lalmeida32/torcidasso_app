import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:torcidasso_app/app_spot.dart';

class AppMarker {
  final String? type;
  final LatLng _position;
  final List<int> torcida;

  //Trocar pra seja lá qual o tipo
  final List<String> _times;
  final int _esporte;

  AppMarker(this._position, this.torcida, this._times, this._esporte, this.type);

  Marker generateMarker() {
    return Marker(
      point: _position,
      builder: ((context) => AppSpot(type: type, jogoMarker: this)),
      rotate: true,
      width: 100,
      height: 75,
      anchorPos: AnchorPos.align(AnchorAlign.top),
    );
  }

  double getPercentage() {
    return torcida[0] / (torcida[0] + torcida[1]);
  }

  // String getText() {
  //   return "$_times[0] x $_times[1]";
  // }
}
