/// A type alias representing a tuple with two elements.
///
/// This tuple contains:
/// - `first`: The first element of type [K].
/// - `last`: The second element of type [T].
///
/// Usage example:
/// ```dart
/// Tuple<int, String> pair = (first: 42, last: 'Hello');
/// print(pair.first); // 42
/// print(pair.last); // 'Hello'
/// ```
typedef Tuple<T, K> = ({K first, T last});
