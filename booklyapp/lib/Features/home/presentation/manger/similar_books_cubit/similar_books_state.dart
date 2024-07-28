part of 'similar_books_cubit.dart';

@immutable
sealed class SimilarBooksState {}

final class SimilarBooksInitial extends SimilarBooksState {}

final class SimilarBooksFailure extends SimilarBooksState {
  final String errMessage;

  SimilarBooksFailure(this.errMessage);
}

final class SimilarBooksSucces extends SimilarBooksState {
  final List<BookModel> books;

  SimilarBooksSucces(this.books);
}

final class SimilarBooksLoading extends SimilarBooksState {}
