/// A type alias representing a key-value pair.
///
/// This is a simple tuple-like structure where:
/// - `key` is a `String`, representing the name or identifier of the pair.
/// - `val` is a generic type [T], representing the value associated with the key.
///
/// Usage example:
/// ```dart
/// KeyValuePair<int> pair = (key: 'age', val: 25);
/// print(pair.key); // 'age'
/// print(pair.val); // 25
/// ```
typedef KeyValuePair<T> = ({String key, T val});
