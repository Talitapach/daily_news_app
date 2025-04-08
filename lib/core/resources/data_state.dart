import 'package:dio/dio.dart';

/// Represents the state of an asynchronous operation that can either
/// return data successfully or fail with an error.
///
/// Commonly used for handling API responses.
abstract class DataState<T>{
  /// The data returned on a successful operation.
  final T ? data;
  /// The error returned on a failed operation (using DioError).
  final DioError ? error;
  /// Base constructor for [DataState].
  const DataState({this.data, this.error});
}

/// Represents a successful state with valid data.
class DataSuccess<T> extends DataState<T>{
    /// Creates a [DataSuccess] state with the provided [data].
  const DataSuccess(T data) : super(data: data);
}

/// Represents a failed state with an error.
class DataFailed<T> extends DataState<T>{
  /// Creates a [DataFailed] state with the provided [error].
  const DataFailed(DioError error) : super(error: error);
}



