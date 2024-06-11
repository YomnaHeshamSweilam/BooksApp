import 'package:booksapp/core/utils/api_service.dart';
import 'package:booksapp/core/utils/router.dart';
import 'package:booksapp/core/utils/sevice_locator.dart';
import 'package:booksapp/costants.dart';
import 'package:booksapp/features/home/data/repos/home_repo_imple.dart';
import 'package:booksapp/features/home/presentation/manager/features_books_cubit/featured_books_cubit.dart';
import 'package:booksapp/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setUpServiceLocator();
  runApp(const BooksApp());
}

class BooksApp extends StatelessWidget {
  const BooksApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=> FeaturedBooksCubit(gitIt.get<HomeRepoImple>()),
        ),
        BlocProvider(create: (context)=> NewestBooksCubit(gitIt.get<HomeRepoImple>()))

      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
            textTheme: GoogleFonts.montserratTextTheme(
              ThemeData.dark().textTheme,
            )),
      ),
    );
  }
}

// #EA8F79  pink
// #FFFFFF
// #EAEAEA grey
// #273238  dark
