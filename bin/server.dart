import 'package:app_grpc/grpc_demo.dart';
import 'package:grpc/grpc.dart';

class AlbumService extends AlbumServiceBase {
  @override
  Future<AlbumResponse> getAlbums(ServiceCall call, AlbumRequest request) async {
    final albumList = albums
        .map((album) => Album.fromJson('{"1": ${album['id']}, "2": "${album['title']}"}'))
        .toList();
    return AlbumResponse()..albums.addAll(albumList);
  }

}

void main() async {
  final server = Server([AlbumService()]);
  await server.serve(port: 5000);
  print('Server run at ${server.port}');
}