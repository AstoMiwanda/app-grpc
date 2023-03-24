import 'package:app_grpc/grpc_demo.dart';
import 'package:grpc/grpc.dart';

void main() async {
  final channel = ClientChannel(
    'localhost',
    port: 4000,
    options: const ChannelOptions(credentials: ChannelCredentials.insecure())
  );
  
  final stub = DataStudentClient(channel);

  final req = Student()..email = 'asto@mail.com';
  final call = await stub.findStudentByEmail(
      req,
    options: CallOptions(metadata: {'ApiKey': 'astoazza'})
  );

  var response = await call;
  print('Response receive $response');

  await channel.shutdown();
}