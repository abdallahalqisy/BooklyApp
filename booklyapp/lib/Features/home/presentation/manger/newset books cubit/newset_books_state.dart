part of 'newset_books_cubit.dart';

@immutable
sealed class NewsetBooksState {}

final class NewsetBooksInitial extends NewsetBooksState {}

final class FeaturedBooksLoading extends NewsetBooksState {}

final class FeaturedBooksFailure extends NewsetBooksState {
  final String errorMessage;

  FeaturedBooksFailure(this.errorMessage);
}

final class FeaturedBooksSuccess extends NewsetBooksState {
  final List<BookModel> books;

  FeaturedBooksSuccess(this.books);
}
