import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_demo/album.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'fetch_album_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  group("fetchAlbum", () {
    test("fetch an Album if the http call complete successfully", () async {
      final client = MockClient();
      when(client
              .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/2')))
          .thenAnswer((_) async =>
              http.Response('{"userId": 1, "id": 3, "title": "123"}', 200));
      expect(await fetchAlbum(client), isA<Album>());
    });

    test("throws an exception if the http call completes with an error",
        () async {
      final client = MockClient();
      when(client
              .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1')))
          .thenAnswer((_) async => http.Response("Not Found", 404));
      expect(fetchAlbum(client), throwsException);
    });
  });
}
