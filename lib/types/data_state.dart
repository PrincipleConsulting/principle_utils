/// A base class representing a state with data and error of generic types.
///
/// This class is designed to handle different states of data. It can represent:
/// - A successful state containing data (`DataSuccess`).
/// - A failed state containing an error (`DataFailed`).
/// It provides utility methods to check whether the state is a success or a failure.
///
/// Type `F` represents the type of the error, and type `S` represents the type of the data.
abstract class DataState<F, S> {
  /// Constructs a [DataState] with optional [data] and [error] values.
  const DataState({this.data, this.error});

  /// The error value of type [F] in case of failure, null if there is no error.
  final F? error;

  /// The data value of type [S] in case of success, null if there is no data.
  final S? data;

  /// Returns `true` if the state represents a successful outcome (i.e., contains data and no error).
  bool get isSuccess => data != null && error == null;

  /// Returns `true` if the state represents a failure (i.e., contains an error and no data).
  bool get isFailure => error != null && data == null;

  /// A custom string representation of the state, indicating whether it is successful, failed, or an empty state.
  @override
  String toString() {
    if (isSuccess) {
      return 'DataSuccess(data: $data)';
    } else if (isFailure) {
      return 'DataFailed(error: $error)';
    }
    return 'DataState()'; // Default case when neither success nor failure
  }
}

/// Represents a successful state containing data of type [S].
///
/// A `DataSuccess` state holds the result of a successful operation and provides
/// a way to access the data.
class DataSuccess<S> extends DataState<Never, S> {
  /// Constructs a [DataSuccess] with the provided [data].
  const DataSuccess(S data) : super(data: data);

  /// A custom string representation of the success state.
  @override
  String toString() => 'DataSuccess(data: $data)';
}

/// Represents a failed state containing an error of type [F].
///
/// A `DataFailed` state holds the error message or object resulting from a failure.
class DataFailed<F> extends DataState<F, Never> {
  /// Constructs a [DataFailed] with the provided [error].
  const DataFailed(F error) : super(error: error);

  /// A custom string representation of the failure state.
  @override
  String toString() => 'DataFailed(error: $error)';
}
