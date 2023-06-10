import 'package:client/core/color/app_color.dart';
import 'package:client/datasources/movie_remote_datasource.dart';
import 'package:client/models/movie_model.dart';
import 'package:client/repositories/movie_repository_impl.dart';
import 'package:client/use_cases/get_movie_use_case.dart';
import 'package:client/widgets/drawer_widget.dart';
import 'package:client/widgets/movie_item_widget.dart';
import 'package:client/widgets/nav_bar_widget.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  static const String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    final GetMovieUseCase getMovieUseCase = GetMovieUseCase(
      repository: MovieRepository(
        remoteDataSource: MovieRemoteDataSource(Dio()),
      ),
    );

    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: NavBarWidget(),
      ),
      body: Center(
        child: FutureBuilder(
          future: getMovieUseCase.getMovies(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator(
                color: AppColor.darkGrey,
              );
            }

            List<MovieModel>? movieModels = snapshot.data;

            if (movieModels == null) {
              return const Text("Null Data");
            }

            PageController pageController = PageController();

            return Stack(
              children: [
                PageView.builder(
                  controller: pageController,
                  itemCount: movieModels.length,
                  itemBuilder: (context, index) {
                    return MovieItemWidget(movieModel: movieModels[index]);
                  },
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox.shrink(),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 40),
                      child: Center(
                        child: Container(
                          decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: 30,
                                spreadRadius: 110,
                                offset: Offset(0, 40),
                              )
                            ],
                          ),
                          child: SmoothPageIndicator(
                            controller: pageController,
                            count: movieModels.length,
                            effect: const WormEffect(
                              activeDotColor: AppColor.darkGrey,
                              dotColor: AppColor.lightGrey,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
