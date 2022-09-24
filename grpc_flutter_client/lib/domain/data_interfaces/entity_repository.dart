/// This repository should be used for entities repositories
/// such as UserRepository, PostRepository
abstract class EntityRepository<T> {
  Future<T> create(T entity);
}
