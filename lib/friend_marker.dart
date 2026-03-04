import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class FriendMarker extends Marker {
  FriendMarker({
    required LatLng location,
    required String name,
    required String imageUrl,
  }) : super(
         point: location,
         width: 60,
         height: 80,
         child: Column(
           mainAxisSize: MainAxisSize.min,
           children: [
             SizedBox(
               width: 50,
               height: 50,
               child: ClipOval(
                 child: Image.network(imageUrl, fit: BoxFit.cover),
               ),
             ),
             const SizedBox(height: 5),
             Container(
               padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(8),
                 boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 4)],
               ),
               child: Text(
                 name,
                 style: const TextStyle(
                   fontSize: 12,
                   fontWeight: FontWeight.bold,
                 ),
                 overflow: TextOverflow.ellipsis,
                 maxLines: 1,
               ),
             ),
           ],
         ),
       );
}
