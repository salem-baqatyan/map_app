import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:map_app/friend_scroll_view.dart.dart';
import 'friend_marker.dart';
import 'friend_service.dart';
import 'zoom_controls.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final MapController _mapController = MapController();
  final List<Friend> friends = FriendService.getFriends();

  void _moveToLocation(LatLng location) {
    _mapController.move(location, 15.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Friends Map')),
      body: Stack(
        children: [
          FlutterMap(
            mapController: _mapController,
            options: MapOptions(
              initialCenter: LatLng(14.530877, 49.134854),
              initialZoom: 18.0,
            ),
            children: [
              TileLayer(
                urlTemplate:
                    'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
              ),
              MarkerLayer(
                markers:
                    friends
                        .map(
                          (friend) => FriendMarker(
                            location: friend.location,
                            name: friend.name,
                            imageUrl: friend.imageUrl,
                          ),
                        )
                        .toList(),
              ),
            ],
          ),
          ZoomControls(mapController: _mapController),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: const Color.fromARGB(188, 255, 255, 255),
              child: FriendScrollView(
                friends: friends,
                onFriendSelected: _moveToLocation,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
