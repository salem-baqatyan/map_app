import 'package:latlong2/latlong.dart';

class Friend {
  final String name;
  final String imageUrl;
  final LatLng location;

  Friend({required this.name, required this.imageUrl, required this.location});
}

class FriendService {
  static List<Friend> getFriends() {
    return [
      Friend(
        name: 'Salem',
        imageUrl:
            'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.webp',
        location: LatLng(14.530877, 49.134854),
      ),
      Friend(
        name: 'Sara',
        imageUrl:
            'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww',
        location: LatLng(40.7128, -74.0060),
      ),
      Friend(
        name: 'Omar',
        imageUrl:
            'https://t3.ftcdn.net/jpg/02/99/04/20/360_F_299042079_vGBD7wIlSeNl7vOevWHiL93G4koMM967.jpg',
        location: LatLng(34.0522, -118.2437),
      ),
      Friend(
        name: 'Liam',
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTefdAYZ6uy2rn4ODl9zSL1KwCAhiEPo9Xm-g&s',
        location: LatLng(51.5074, -0.1278),
      ),
      Friend(
        name: 'Emma',
        imageUrl:
            'https://img.freepik.com/free-photo/lifestyle-people-emotions-casual-concept-confident-nice-smiling-asian-woman-cross-arms-chest-confident-ready-help-listening-coworkers-taking-part-conversation_1258-59335.jpg',
        location: LatLng(48.8566, 2.3522),
      ),
      Friend(
        name: 'Noah',
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQL9HaaTJSDJsT4iNusqiWXnEUelnan5lADZQ&s',
        location: LatLng(-33.8688, 151.2093),
      ),
      Friend(
        name: 'Olivia',
        imageUrl:
            'https://www.georgetown.edu/wp-content/uploads/2022/02/Jkramerheadshot-scaled-e1645036825432-1050x1050-c-default.jpg',
        location: LatLng(35.6895, 139.6917),
      ),
      Friend(
        name: 'William',
        imageUrl:
            'https://img.freepik.com/free-photo/close-up-upset-american-black-person_23-2148749582.jpg',
        location: LatLng(55.7558, 37.6173),
      ),
      Friend(
        name: 'Sophia',
        imageUrl:
            'https://media.istockphoto.com/id/1132928597/photo/portrait-of-nice-cute-smart-clever-attractive-beautiful-cheerful-glad-positive-wavy-haired.jpg?s=612x612&w=0&k=20&c=jcUVffv6QeE5MnP7BnrmjJ8-gcjEajclqyMEg9Z6uwI=',
        location: LatLng(52.5200, 13.4050),
      ),
      Friend(
        name: 'James',
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3lAsaRkY1bio7NHqRCtay8n-WZSMXHGBpcA&s',
        location: LatLng(45.4215, -75.6972),
      ),
      Friend(
        name: 'Charlotte',
        imageUrl:
            'https://www.shutterstock.com/image-photo/young-beautiful-woman-wearing-green-260nw-1564709848.jpg',
        location: LatLng(41.9028, 12.4964),
      ),
      Friend(
        name: 'Benjamin',
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRr3qBVX4XIA8zq3LpBn64zAuOt9_IZ7_H5uA&s',
        location: LatLng(-22.9068, -43.1729),
      ),
      Friend(
        name: 'Mia',
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQGMaEFczJjYh8ciwjV3YDm_KunVflYqaWADN6AyBHqG_u30gLrzdsjCrBAdJ8XtcXff0&usqp=CAU',
        location: LatLng(19.4326, -99.1332),
      ),
      Friend(
        name: 'Lucas',
        imageUrl:
            'https://cdn.create.vista.com/api/media/small/414253550/stock-photo-smiling-man-eyeglasses-pointing-finger-isolated-grey',
        location: LatLng(39.9042, 116.4074),
      ),
      Friend(
        name: 'Amelia',
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBQcRtWVDjSpn8k9DDCETUsh-LL3HVJGDMaQ&s',
        location: LatLng(1.3521, 103.8198),
      ),
      Friend(
        name: 'Ethan',
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2hD5YiMvCvpG8wgH4UzWvMNKFT2VP-qquDg&s',
        location: LatLng(37.5665, 126.9780),
      ),
      Friend(
        name: 'Harper',
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxYA4yTn5sczM4j6psN48F0zJk8zELz2nT4A&s',
        location: LatLng(-26.2041, 28.0473),
      ),
      Friend(
        name: 'Aiden',
        imageUrl:
            'https://img.freepik.com/free-photo/photo-serious-male-keeps-index-finger-lips-as-demonstrates-hush-gesture_273609-44804.jpg',
        location: LatLng(30.0444, 31.2357),
      ),
      Friend(
        name: 'Evelyn',
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIR93XPnaPgUmN4NkQE8G4wV7zOSvJ1Q8Ii6kLUa9zU0L8UQsfKniEaFy1RRPB6skm1MM&usqp=CAU',
        location: LatLng(59.3293, 18.0686),
      ),
      Friend(
        name: 'Mason',
        imageUrl:
            'https://www.shutterstock.com/image-photo/side-profile-photo-intelligent-serious-260nw-2057873078.jpg',
        location: LatLng(25.276987, 55.296249),
      ),
    ];
  }
}
