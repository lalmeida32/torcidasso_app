import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_marker_popup/flutter_map_marker_popup.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:torcidasso_app/app_marker.dart';

class AppMap extends StatefulWidget {
  const AppMap({Key? key}) : super(key: key);

  @override
  State<AppMap> createState() => _AppMapState();
}

class _AppMapState extends State<AppMap> {
  final _markersList = <Marker>[];
  final _popupController = PopupController();
  final _controller = MapController();

  @override
  void initState() {
    _determinePosition().then((value) {
      final pos = LatLng(value.latitude, value.longitude);
      _controller.move(pos, 15);
      _addMarker(
          AppMarker(pos, [3, 2], ["Brasil", "Qatar"], 0).generateMarker());
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _addMarker(Marker marker) {
    setState(() {
      _markersList.add(marker);
    });
  }

  void _clearMarkers() {
    setState(() {
      _markersList.clear();
    });
  }

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
    return await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );
  }

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      mapController: _controller,
      options: MapOptions(
        center: LatLng(-23.533773, -46.625290),
        zoom: 10,
        keepAlive: true,
        minZoom: 3,
        interactiveFlags: ~InteractiveFlag.rotate,
      ),
      nonRotatedChildren: [
        AttributionWidget.defaultWidget(
          source: 'OpenStreetMap contributors',
          onSourceTapped: null,
        ),
      ],
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
        ),
        PopupMarkerLayerWidget(
          options: PopupMarkerLayerOptions(
              popupController: _popupController,
              markers: _markersList,
              markerCenterAnimation: const MarkerCenterAnimation(),
              popupBuilder: (context, marker) => const FlutterLogo()),
        )
      ],
    );
  }
}
