part of 'featured_books_cubit.dart';

@immutable
sealed class FeaturedBooksState {}

final class FeaturedBooksInitial extends FeaturedBooksState {}

final class FeaturedBooksLoading extends FeaturedBooksState {}

final class FeaturedBooksFailure extends FeaturedBooksState {
  final String errmsg;

  FeaturedBooksFailure({required this.errmsg});
}

final class FeaturedBooksScusses extends FeaturedBooksState {
  final List<BookEntity> books;

  FeaturedBooksScusses({required this.books});
}
