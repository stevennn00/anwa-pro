class Result<T> {
  const Result._({this.value, this.error});

  const Result.success(T value) : this._(value: value);

  const Result.failure(String error) : this._(error: error);

  final T? value;
  final String? error;

  bool get isSuccess => error == null;
}
