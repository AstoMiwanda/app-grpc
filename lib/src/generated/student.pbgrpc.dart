///
//  Generated code. Do not modify.
//  source: student.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'student.pb.dart' as $0;
export 'student.pb.dart';

class DataStudentClient extends $grpc.Client {
  static final _$findStudentByEmail =
      $grpc.ClientMethod<$0.Student, $0.Student>(
          '/student.DataStudent/FindStudentByEmail',
          ($0.Student value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Student.fromBuffer(value));

  DataStudentClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.Student> findStudentByEmail($0.Student request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$findStudentByEmail, request, options: options);
  }
}

abstract class DataStudentServiceBase extends $grpc.Service {
  $core.String get $name => 'student.DataStudent';

  DataStudentServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Student, $0.Student>(
        'FindStudentByEmail',
        findStudentByEmail_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Student.fromBuffer(value),
        ($0.Student value) => value.writeToBuffer()));
  }

  $async.Future<$0.Student> findStudentByEmail_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Student> request) async {
    return findStudentByEmail(call, await request);
  }

  $async.Future<$0.Student> findStudentByEmail(
      $grpc.ServiceCall call, $0.Student request);
}
