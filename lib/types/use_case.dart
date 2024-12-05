/// An abstract class that represents a generic use case.
///
/// A use case is a specific action or operation in the system. This abstract class provides
/// a standard structure for implementing use cases with two generic types:
/// - `Type`: The type of the result returned by the use case (e.g., `String`, `List`).
/// - `Params`: The type of the parameters required to execute the use case (e.g., `String`, `int`).
///
/// Concrete implementations of this class should define the business logic for executing
/// the use case and return the appropriate result.
///
/// Example usage:
/// ```dart
/// class GetUserDetailsUseCase extends UseCase<User, int> {
///   @override
///   Future<User> call({int? params}) async {
///     // Implement business logic to fetch user details based on params (userId)
///     return User(id: params, name: "John Doe");
///   }
/// }
/// ```
///
/// In this example, `GetUserDetailsUseCase` uses `int` for `Params` (e.g., user ID) and returns a `User` object.
abstract class UseCase<Type, Params> {
  const UseCase();

  /// Executes the use case with the given parameters.
  ///
  /// This method will perform the necessary operation and return the result as a `Future` of type [Type].
  ///
  /// If no parameters are needed, the `params` argument can be omitted or passed as `null`.
  ///
  /// Example:
  /// ```dart
  /// final result = await useCase.call(params: userId);
  /// ```
  Future<Type> call({Params? params});
}
