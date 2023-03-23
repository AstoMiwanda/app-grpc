import 'package:app_grpc/grpc_demo.dart';

void main(List<String> arguments) {
  final album = Album()
      ..id = 1
      ..title = 'Album Title';
  print(album);
}