abstract class BaseUseCase<Output, Input> {
  Future<Output> call(Input params);
}
