import 'package:client/core/color/app_color.dart';
import 'package:client/models/movie_model.dart';
import 'package:client/services/movie_service.dart';
import 'package:client/widgets/drawer_widget.dart';
import 'package:client/widgets/movie_item_widget.dart';
import 'package:client/widgets/nav_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  static const String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    final MovieService movieService =
        Provider.of<MovieService>(context, listen: false);
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: NavBarWidget(),
      ),
      body: Center(
        child: FutureBuilder(
          future: movieService.getAllMovie(),
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
