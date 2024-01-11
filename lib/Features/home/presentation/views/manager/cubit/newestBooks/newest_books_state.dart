part of 'newest_books_cubit.dart';

@immutable
sealed class NewestBooksState {}

final class NewestBooksInitial extends NewestBooksState {}

final class NewestBooksLoading extends NewestBooksState {}

final class NewestBooksScusses extends NewestBooksState {
  final List<BookEntity> books;

  NewestBooksScusses({required this.books});
}

final class NewestBooksFailure extends NewestBooksState {
  final String errmsg;

  NewestBooksFailure({required this.errmsg});
}
