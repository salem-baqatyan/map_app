import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import 'friend_service.dart';

class FriendScrollView extends StatefulWidget {
  final List<Friend> friends;
  final Function(LatLng) onFriendSelected;

  const FriendScrollView({
    super.key,
    required this.friends,
    required this.onFriendSelected,
  });

  @override
  _FriendScrollViewState createState() => _FriendScrollViewState();
}

class _FriendScrollViewState extends State<FriendScrollView> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: SingleChildScrollView(
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(widget.friends.length, (index) {
            return _buildFriendWidget(widget.friends[index]);
          }),
        ),
      ),
    );
  }

  Widget _buildFriendWidget(Friend friend) {
    return GestureDetector(
      onTap: () => widget.onFriendSelected(friend.location),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(friend.imageUrl),
              radius: 30,
            ),
            const SizedBox(height: 5),
            Text(friend.name, style: const TextStyle(fontSize: 12)),
          ],
        ),
      ),
    );
  }
}
