import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../config/theme/theme.dart';

import '../data/data.dart';
import '../domain/domain.dart';
import 'widgets/drawer/page/page.dart';
import 'widgets/movie_item/page/page.dart';
import 'widgets/navbar/page/page.dart';

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
                color: DesignSystem.g0,
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
                              activeDotColor: DesignSystem.g0,
                              dotColor: DesignSystem.g1,
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
