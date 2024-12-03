abstract class DataState<F, S> {
  const DataState({this.data, this.error});

  final F? error;
  final S? data;

  // Check if the state is successful
  bool get isSuccess => data != null && error == null;

  // Check if the state is a failure
  bool get isFailure => error != null && data == null;

  @override
  String toString() {
    if (isSuccess) {
      return 'DataSuccess(data: $data)';
    } else if (isFailure) {
      return 'DataFailed(error: $error)';
    }
    return 'DataState()'; // Default case
  }
}

class DataSuccess<S> extends DataState<Never, S> {
  const DataSuccess(S data) : super(data: data);

  @override
  String toString() => 'DataSuccess(data: $data)';
}

class DataFailed<F> extends DataState<F, Never> {
  const DataFailed(F error) : super(error: error);

  @override
  String toString() => 'DataFailed(error: $error)';
}
