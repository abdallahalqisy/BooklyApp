import 'package:booklyapp/Features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/Features/home/data/repos/home_repo.dart';
import 'package:booklyapp/core/errors/failueres.dart';
import 'package:booklyapp/core/utils/api_servise.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiServise apiServise;

  HomeRepoImpl(this.apiServise);
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewsBooks() async {
    try {
      var data = await apiServise.get(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=newst&q=subject:computer science');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromBook(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure(ServerFailure.fromDioError(e) as String));
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiServise.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=subject:Programming');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromBook(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure(ServerFailure.fromDioError(e) as String));
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(
      {required String category}) async {
    try {
      var data = await apiServise.get(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=relevance&q=subject:Programming');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromBook(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure(ServerFailure.fromDioError(e) as String));
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }
}
