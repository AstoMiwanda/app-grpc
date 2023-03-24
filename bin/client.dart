import 'package:app_grpc/grpc_demo.dart';
import 'package:grpc/grpc.dart';

void main() async {
  final channel = ClientChannel(
      'localhost',
      port: 5000,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure())
  );

  final stub = AlbumServiceClient(channel);

  var response = await stub.getAlbums(AlbumRequest());
  print('Response receive $response');

  await channel.shutdown();
}