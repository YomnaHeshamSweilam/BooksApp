import 'package:booksapp/core/utils/api_service.dart';
import 'package:booksapp/features/home/data/repos/home_repo_imple.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final gitIt = GetIt.instance;

void setUpServiceLocator()
{
gitIt.registerSingleton<ApiService>(ApiService(Dio()));
gitIt.registerSingleton<HomeRepoImple>(HomeRepoImple(gitIt.get<ApiService>()));

}
