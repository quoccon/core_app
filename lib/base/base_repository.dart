import '../network/error_mapper.dart';
import '../result/either.dart';
import '../result/failure.dart';

abstract class BaseRepository {
  Future<Either<Failure, T>> safeCall<T>(Future<T> Function() body) async {
    try {
      final result = await body();
      return Either.right(result);
    } catch (error) {
      return Either.left(ErrorMapper.toFailure(error));
    }
  }
}
