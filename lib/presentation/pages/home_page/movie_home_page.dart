import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movies_clean_architecture_test/core/utils/service_locator.dart';
import 'package:movies_clean_architecture_test/data/repository/movies_repository.dart';
import 'package:movies_clean_architecture_test/domain/usecases/get_now_playing_movies_usecase.dart';
import 'package:movies_clean_architecture_test/domain/usecases/get_popular_movies_usecase.dart';
import 'package:movies_clean_architecture_test/domain/usecases/get_top_rated_movies_usecase.dart';
import 'package:movies_clean_architecture_test/presentation/manager/home_movies_bloc/home_movies_bloc.dart';
import 'package:movies_clean_architecture_test/presentation/pages/home_page/components/now_playing_movies_component.dart';
import 'package:movies_clean_architecture_test/presentation/pages/home_page/components/popular_movies_component.dart';
import 'package:movies_clean_architecture_test/presentation/pages/home_page/components/top_rated_movies_component.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MovieHomePage extends StatelessWidget {
  const MovieHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeMoviesBloc(
        GetNowPlayingMoviesUseCase(
          getIt.get<MoviesRepository>(),
          //MoviesRepository(RemoteMoviesDataSource(ApiService(Dio()))),
        ),
        GetPopularMoviesUseCase(
          getIt.get<MoviesRepository>(),
          // MoviesRepository(RemoteMoviesDataSource(ApiService(Dio()))),
        ),
        GetTopRatedMoviesUseCase(
          getIt.get<MoviesRepository>(),
          //MoviesRepository(RemoteMoviesDataSource(ApiService(Dio()))),
        ),
      )
        ..add(GetNowPlayingMoviesEvent())
        ..add(GetPopularMoviesEvent())
        ..add(GetTopMoviesEvent()),
      child: Scaffold(
        body: SingleChildScrollView(
          key: const Key('movieScrollView'),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const NowPlayingMoviesComponent(),
              Container(
                margin: const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.popular,
                      style: GoogleFonts.poppins(
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.15,
                        color: Colors.white,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        /// TODO : NAVIGATION TO POPULAR SCREEN
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children:  [
                            Text(
                              AppLocalizations.of(context)!.seeMore,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 16.0,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const PopularMoviesComponent(),
              Container(
                margin: const EdgeInsets.fromLTRB(
                  16.0,
                  24.0,
                  16.0,
                  8.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.topRated,
                      style: GoogleFonts.poppins(
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.15,
                        color: Colors.white,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        /// TODO : NAVIGATION TO Top Rated Movies Screen
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              AppLocalizations.of(context)!.seeMore,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 16.0,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const TopRatedMoviesComponent(),
              const SizedBox(height: 50.0),
            ],
          ),
        ),
      ),
    );
  }
}
